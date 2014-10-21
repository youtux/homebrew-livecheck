$LOAD_PATH.unshift(File.expand_path('../../', Pathname.new(__FILE__).realpath))
require "livecheck/utils"

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
    f_basename = File.basename formula.path
    if Dir["../Livecheckables/*.rb"].map{ |f| File.basename f }.include? f_basename
      require "../Livecheckables/#{f_basename}"
    end

    if formula.respond_to? :get_latest_version
      formula.get_latest_version
    elsif formula.head and DownloadStrategyDetector.detect(formula.head.url) == GitDownloadStrategy
      git_tags(formula.head.url).map { |tag| Version.new tag }.max
    else
      raise TypeError,
        "Unable to get versions for #{formula}"
    end
end

if check_flags ['-d']

    puts Pathname.new(__FILE__).realpath
    puts $LOAD_PATH
end

if ARGV.size == 0 or check_flags ['-h', '--help']
  puts usage
elsif check_flags ['-i', '--installed']
  puts "Not implemented -i"
elsif check_flags ['-a', '--all']
  puts "Not implemented -a"
else
  ARGV.formulae.each do |f|
    begin
        latest = latest_version(f)
        puts latest unless check_flags ['-n', '--only-newer'] and f.version <= latest
    rescue Exception => e
        puts e
    end
  end
end
