LIVECHECK_PATH = Pathname.new(__FILE__).realpath/".."/".."
LIVECHECKABLES_PATH = LIVECHECK_PATH / 'Livecheckables'

$LOAD_PATH.unshift(LIVECHECK_PATH)
require "livecheck/utils"
require "formula"

WATCHLIST_PATH = ENV['HOMEBREW_LIVECHECK_WATCHLIST'] || Pathname.new(Dir.home) + ".brew_livecheck_watchlist"

usage = <<-EOF.undent
  brew livecheck
  brew livecheck formula1 formula2 ...
  brew livecheck [-i|--installed]
  brew livecheck [-a|--all]
  brew livecheck [-h|--help]

  Usage:
  Check if a formula is outdated. If no argument is passed, the list of formulae to check is taken from #{WATCHLIST_PATH}.

  Options:
  -h, --help        show this help message and exit
  -n, --newer-only  show the latest version only if it's newer than the formula in Homebrew
  -v, --verbose     be more verbose :)
  -q, --quieter     be more quiet (do not show errors)
  -d, --debug       show debugging info
EOF

class Formulary
  def self.load_livecheckable ref
    begin
      puts "Loading #{ref}" if ARGV.debug?
      require LIVECHECKABLES_PATH / ref
    rescue LoadError
      opoo "#{Tty.blue}#{ref}#{Tty.reset} does not implement livecheck" if ARGV.verbose?
    end
  end

  def self.factory(ref, spec=:stable)
    r = loader_for(ref).get_formula(spec)
    load_livecheckable(ref)
    r
  end
end

class Formula
  def latest
    if respond_to? :livecheck
      Version.new(livecheck)
    elsif head and DownloadStrategyDetector.detect(head.url) == GitDownloadStrategy
      versions = git_tags(head.url).map do |tag|
        Version.detect(head.url, {:tag => tag})
      end
      versions.max
    else
      raise TypeError, "Unable to get versions for #{Tty.blue}#{name}#{Tty.reset}"
    end
  end
end

if (Pathname.new(File.expand_path('..', __FILE__)).basename).to_s == 'bin'
  opoo <<-EOS.undent
    It seems you are using an old version of homebrew-livecheck.
    Please run this command to get the latest version with auto-update:

      brew uninstall brew-livecheck ; brew update && brew tap --repair

    More info at https://github.com/youtux/homebrew-livecheck/blob/master/README.md
  EOS
end

def print_latest_version formula
  begin
    current = formula.version
    latest = formula.latest

    formula_s = "#{Tty.blue}#{formula}#{Tty.reset}"
    current_s = current > latest ? "#{Tty.red}#{current}#{Tty.reset}" : "#{current}"
    latest_s = latest > current ? "#{Tty.green}#{latest}#{Tty.reset}" : "#{latest}"

    unless (ARGV.flag? "--newer-only" and current >= latest)
      oh1 "#{formula_s} : #{current_s} ==> #{latest_s}"
    end
    if current > latest
      opoo "#{formula_s} version is greater than the upstream version" if ARGV.verbose?
    end
  rescue StandardError => e
    onoe e unless ARGV.quieter?
  end
end

if ARGV.debug?
  # puts ARGV
  # puts ENV['HOMEBREW_LIVECHECK_WATCHLIST']
  # puts Pathname.new(File.expand_path('..', __FILE__)).basename
  # puts $LOAD_PATH
end

case
when ARGV.flag?("--help")
  puts usage
when ARGV.flag?("--installed")
  Formula.installed.each do |formula|
    print_latest_version formula
  end
when ARGV.flag?("--all")
  Formula.each do |formula|
    print_latest_version formula
  end
when ARGV.formulae.size == 0
  begin
    File.open(WATCHLIST_PATH).each do |line|
      line.split.each do |word|
        print_latest_version Formulary.factory(word)
      end
    end
  rescue Errno::ENOENT => e
    onoe e
  end
else
  ARGV.formulae.each do |formula|
    print_latest_version formula
  end
end
