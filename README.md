homebrew-livecheck
==================

External command for Homebrew that checks for newer version of formulae in the upstream.

# Install
    brew tap youtux/livecheck && brew install brew-livecheck

# Usage
```
brew livecheck [options] formula1 formula2 ...
brew livecheck [-i|--installed] # not yet implemented
brew livecheck [-a|--all]       # not yet implemented
brew livecheck [-h|--help]

Usage:
    Check if a formula is outdated

Options:
  -h, --help        show this help message and exit
  -n, --only-newer  show the latest version only if it's newer than the formula
                    in Homebrew
```

In order to make a formula compatible with `homebrew-livecheck`, it is sufficient to place an extension of the formula into `Livecheckables`.

All the `Livecheckables` classes must implement the `get_latest_version` method.
See [pebble-sdk.rb](Livecheckables/pebble-sdk.rb) as reference.
