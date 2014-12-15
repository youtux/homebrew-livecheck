# CHANGELOG
This file is no more maintained in favor of the git log.

## 0.5
* __Features__
  - From now on it is sufficient to tap the repository and you are ready to go! Delete the old version by running `brew rm brew-livecheck`

## 0.4
* __Breaking Changes__
  - Livecheck only selected formulae! You can put the formulae you want to watch inside the watchlist file (default: ~/.brew_livecheck_watchlist)

## 0.3.3
* __Fixes__
  - Fixed a bug preventing Ctrl + C (SIGINT) to exit the program
* __Features__
  - Added an environment source (env.sh) to auto load the bin folder into the PATH. Useful for debugging.

## 0.3.2
* __Livecheckables__
  - 4 Livecheckables added

## 0.3.1
* __Fixes__
  - Fixed crash when errors occoured while checking a formula
  - Fixed colors

## 0.3

* __Livecheckables__
  - 1 Livecheckable updated
* __Breaking Changes__
  - Livecheck of installed formulae!
  - Colored output!
