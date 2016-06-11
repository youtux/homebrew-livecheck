LIVECHECK_PATH = Pathname.new(__FILE__).realpath/".."/".."
LIVECHECKABLES_PATH = LIVECHECK_PATH / "Livecheckables"

$LOAD_PATH.unshift(LIVECHECK_PATH)
require "livecheck/utils"
require "livecheck/euristic"
require "livecheck/extend/formulary"

WATCHLIST_PATH = ENV["HOMEBREW_LIVECHECK_WATCHLIST"]
WATCHLIST_PATH ||= Pathname.new(Dir.home) / ".brew_livecheck_watchlist"

usage = <<-EOF.undent
  brew livecheck
  brew livecheck formula1 formula2 ...
  brew livecheck [-i|--installed]
  brew livecheck [-a|--all]
  brew livecheck [-h|--help]

  Usage:
  Check if a formula is outdated. If no argument is passed, the list of
  formulae to check is taken from #{WATCHLIST_PATH}.

  Options:
  -h, --help        show this help message and exit
  -n, --newer-only  show the latest version only if it's newer than the formula
                    in Homebrew
  -v, --verbose     be more verbose :)
  -q, --quieter     be more quiet (do not show errors)
  -d, --debug       show debugging info
EOF

# Taken directly from Homebrew
def require?(path)
  require path
rescue LoadError => e
  # HACK: ( because we should raise on syntax errors but
  # not if the file doesn't exist. TODO make robust!
  raise unless e.to_s.include? path
end

if (Pathname.new(File.expand_path("..", __FILE__)).basename).to_s == "bin"
  opoo <<-EOS.undent
    It seems you are using an old version of homebrew-livecheck.
    Please run this command to get the latest version with auto-update:

      brew uninstall brew-livecheck ; brew update && brew tap --repair

    More info at https://github.com/youtux/homebrew-livecheck/blob/master/README.md
  EOS
end

def print_latest_version(formula)
  current = formula.version
  latest = formula.latest

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
  oh1 "#{formula_s} : #{current_s} ==> #{latest_s}" if needs_to_show

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

if ARGV.flag?("--help")
  puts usage
  exit 0
end

if ARGV.named[0]
  require?("livecheck/commands/" + ARGV.named[0]) && exit
end

formulae_to_check =
  case
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

formulae_to_check.each do |formula|
  print_latest_version formula
end
