# Ignores all formulae but first (this is by design)
puts (LIVECHECKABLES_PATH/"#{Homebrew.args.named[1]}.rb").read
