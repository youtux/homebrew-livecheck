homebrew-livecheck
==================

External command for Homebrew that checks for newer version of formulae in the upstream.

# Install
    brew tap youtux/livecheck && brew install brew-livecheck

# Usage
The most useful way to use the command is by invoking

    brew livecheck -i
which shows all the outdated formulae that are installed.
If you find a formula that can't be checked, please help the project by writing the Livecheckable version and make a pull request!
```
brew livecheck [options] formula1 formula2 ...
brew livecheck [-i|--installed]
brew livecheck [-a|--all]       # not yet implemented
brew livecheck [-h|--help]

Usage:
    Check if a formula is outdated

Options:
  -h, --help        show this help message and exit
  -n, --only-newer  show the latest version only if it's newer than the formula
                    in Homebrew
  -v, --verbose     show more informations (useful when creating Livecheckables)
```

In order to make a formula compatible with `homebrew-livecheck`, it is sufficient to place an extension of the formula into `Livecheckables`.

All the `Livecheckables` classes must implement the `livecheck` method.
You can look at [Livecheckables](Livecheckables/) to get the idea.

## Contributions are welcomed
If you like this project and you find it useful, help me by adding more Livecheckables or by improving the code (or the non-existing wiki, the readme, etc.).

### Changelog
See [CHANGELOG.md](CHANGELOG.md).
