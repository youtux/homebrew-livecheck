#:  * `livecheck`
#:
#:  Check for newer versions of formulae from upstream.
#:
#:  If no argument is passed, the list of formulae to check is taken from #{WATCHLIST_PATH}
#:
#:    `brew livecheck`
#:    `brew livecheck` <formula1> <formula2> <...>
#:    `brew livecheck` [`--tap=<tap>`]
#:    `brew livecheck` [`-i`|`--installed`]
#:    `brew livecheck` [`-a`|`--all`]
#:    `brew livecheck` [`-h`|`--help`]
#:
#:  Options:
#:    `-h`, `--help`        show this help message and exit
#:    `-n`, `--newer-only`  show the latest version only if it's newer than the formula
#:    `-v`, `--verbose`     be more verbose :)
#:    `-q`, `--quieter`     be more quiet (do not show errors)
#:    `-d`, `--debug`       show debugging info

require_relative "../livecheck/utils"
require_relative "../livecheck/euristic"
require_relative "../livecheck/extend/formulary"

LIVECHECKABLES_PATH = Pathname(__dir__).parent/"Livecheckables"

WATCHLIST_PATH = ENV["HOMEBREW_LIVECHECK_WATCHLIST"]
WATCHLIST_PATH ||= Pathname.new(Dir.home)/".brew_livecheck_watchlist"

if (Pathname.new(File.expand_path("..", __FILE__)).basename).to_s == "bin"
  opoo <<~EOS
    It seems you are using an old version of homebrew-livecheck.
    Please run this command to get the latest version with auto-update:

      brew uninstall brew-livecheck ; brew update && brew tap --repair

    More info at https://github.com/youtux/homebrew-livecheck/blob/master/README.md
  EOS
end

def print_latest_version(formula)
  if formula.to_s.include?("@") && !formula.livecheckable
    puts "#{Tty.red}#{formula}#{Tty.reset} : versioned" unless ARGV.quieter?
    return
  end

  current = formula.version
  latest = formula.latest
  if (m = latest.to_s.match(/(.*)-release$/)) && !current.to_s.match(/.*-release$/)
    latest = Version.new(m[1])
  end

  is_outdated = current < latest
  is_newer_than_upstram = current > latest

  formula_s = "#{Tty.blue}#{formula}#{Tty.reset}"
  formula_s += " (guessed)" unless formula.livecheckable
  current_s =
    if is_newer_than_upstram
      "#{Tty.red}#{current}#{Tty.reset}"
    else
      "#{current}"
    end

  latest_s =
    if is_outdated
      "#{Tty.green}#{latest}#{Tty.reset}"
    else
      "#{latest}"
    end

  needs_to_show = is_outdated || !ARGV.flag?("--newer-only")
  puts "#{formula_s} : #{current_s} ==> #{latest_s}" if needs_to_show

  if is_newer_than_upstram && ARGV.verbose?
    opoo "#{formula_s} version is greater than the upstream version"
  end
rescue StandardError => e
  onoe e unless ARGV.quieter?
end

if ARGV.debug?
  # puts ARGV
  # puts ENV["HOMEBREW_LIVECHECK_WATCHLIST"]
  # puts Pathname.new(File.expand_path("..", __FILE__)).basename
  # puts $LOAD_PATH
end

if ARGV.named[0]
  require?("livecheck/commands/" + ARGV.named[0]) && exit
end

formulae_to_check =
  case
  when ARGV.value("tap")
    tap = ARGV.value("tap")
    Tap.fetch(tap).formula_names.map { |name| Formula[name] }
  when ARGV.flag?("--installed")
    Formula.installed
  when ARGV.flag?("--all")
    Formula.names.map { |name| Formula[name] }
  when ARGV.formulae.size == 0
    Enumerator.new do |enum|
      begin
        File.open(WATCHLIST_PATH).each do |line|
          line.split.each do |word|
            enum.yield Formulary.factory(word)
          end
        end
      rescue Errno::ENOENT => e
        onoe e
      end
    end
  else
    ARGV.formulae
  end

formulae_to_check.sort.each do |formula|
  print_latest_version formula
end
