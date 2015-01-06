homebrew-livecheck
==================
External command for Homebrew that checks for newer version of formulae in the upstream.

# Update 05/01/2015: temporarily not working
Since [Homebrew/homebrew@6cfaaa2](https://github.com/Homebrew/homebrew/commit/6cfaaa2) the command is not working. I'm trying to figure out why, if you can help that would be very appreciated.

# Warning: new update mechanism
Since version 0.5, a new update mechanism has been introduced. From now on the command will be update whenever you do a `brew update`. It is strongly recommended to uninstall the formula and retap the repository:

    brew uninstall brew-livecheck ; brew update && brew tap --repair

If the above line doesn't work, then unistall brew-livecheck, untap the repository and tap it again. If this does not fix the problem then open an issue. Sorry for the inconvenience.

# Install
    brew tap youtux/livecheck
That's it. You don't even need to install the formula. And it will autoupdate whenever you do a `brew update`.

# Usage
The most useful way to use the command is by invoking

    $ brew livecheck
    ==> git : 2.1.2 ==> 2.1.2
    ==> sqlmap : 0.9 ==> 0.9
    ==> pebble-sdk : 2.6 ==> 2.7
    ...
which shows (with colors!) the formulae in your watchlist (default: ~/.brew_livecheck_watchlist) that are outdated. You can set your own watchlist file in the `HOMEBREW_LIVECHECK_WATCHLIST` env variable.

```
brew livecheck
brew livecheck formula1 formula2 ...
brew livecheck [-i|--installed]
brew livecheck [-a|--all]
brew livecheck [-h|--help]

Usage:
Check if a formula is outdated. If no argument is passed, the list of
formulae to check is taken from /Users/youtux/.brew_livecheck_watchlist.

Options:
-h, --help        show this help message and exit
-n, --newer-only  show the latest version only if it's newer than the formula
                  in Homebrew
-v, --verbose     be more verbose :)
-q, --quieter     be more quiet (do not show errors)
-d, --debug       show debugging info
```

Some of the formulae can be checked **out-of-the-box** (like sqlmap), but others need to some attention to make 'em work. If you find a formula that can't be checked, please help the project by writing the Livecheckable version and make a pull request!

In order to make a formula compatible with `homebrew-livecheck`, it is sufficient to extend the formulae class and place it into the `Livecheckables` directory.

The only requirement is that a `Livecheckable` formula must implement the `latest` method, that can be easily made by calling the `livecheck` function available from [formula.rb](livecheck/extend/formula.rb).

Here's an example from [python.rb](Livecheckables/python.rb):
```ruby
class Python
  livecheck :url => "https://www.python.org/ftp/python",
            :regex => %r{href="(2(?:\.\d)+)/"}
end
```

You can look at [Livecheckables](Livecheckables/) to get the idea.

## Contributions are welcomed
If you like this project and you find it useful, help me by adding more Livecheckables or by improving the code (or the non-existing wiki, the readme, etc.).

## Changelog
See the git log. An old changelog (not maintained) is available at [CHANGELOG.md](CHANGELOG.md).
