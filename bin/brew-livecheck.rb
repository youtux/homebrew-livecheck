$LOAD_PATH.unshift(File.expand_path('../../', Pathname.new(__FILE__).realpath))
require "livecheck/utils"
require 'formula'

usage = <<EOF
brew livecheck formula1 formula2 ...
brew livecheck [-i|--installed]
brew livecheck [-a|--all]
brew livecheck [-h|--help]

Usage:
Check if a formula is outdated

Options:
-h, --help        show this help message and exit
-n, --only-newer  show the latest version only if it's newer than the formula
in Homebrew
EOF

def check_flags flags
  ARGV.any? { |arg| flags.include? arg }
end

def latest_version formula
  begin
    require "Livecheckables/#{formula}"
  rescue LoadError
    opoo "#{Tty.blue}#{formula}#{Tty.reset} does not implement livecheck" if ARGV.verbose?
  end

  if formula.respond_to? :livecheck
    Version.new(formula.livecheck)
  elsif formula.head and DownloadStrategyDetector.detect(formula.head.url) == GitDownloadStrategy
    git_tags(formula.head.url).map { |tag| Version.new tag }.max
  else
    raise TypeError, "Unable to get versions for #{Tty.blue}#{formula}#{Tty.reset}"
  end
end

def print_latest_version formula
  begin
    current = formula.version
    latest = latest_version(formula)

    formula_s = "#{Tty.blue}#{formula}#{Tty.reset}"
    current_s = current > latest ? "#{Tty.red}#{current}#{Tty.reset}" : "#{current}"
    latest_s = latest > current ? "#{Tty.green}#{latest}#{Tty.reset}" : "#{latest}"

    unless (check_flags ['-n', '--only-newer'] and current >= latest)
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
  puts File.expand_path("../../Livecheckables/#{ARGV.formulae.first}.rb", Pathname.new(__FILE__).realpath)
  puts Pathname.new(__FILE__).realpath
  puts $LOAD_PATH
end

if ARGV.size == 0 or check_flags ['-h', '--help']
  puts usage
elsif check_flags ['-i', '--installed']
  Formula.installed.each do |formula|
    print_latest_version formula
  end
elsif check_flags ['-a', '--all']
  onoe "Not implemented -a"
else
  ARGV.formulae.each do |formula|
    print_latest_version formula
  end
end
