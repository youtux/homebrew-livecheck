# Ignores all formulae but first (this is by design)
livecheckable_path = LIVECHECKABLES_PATH / "#{ARGV.named[1]}.rb"
puts File.open(livecheckable_path).read
exit 0
