class CabalInstall
  livecheck do
    url "https://www.haskell.org/cabal/download.html"
    regex(/cabal-install tool \(version v?(\d+(?:\.\d+)+)/i)
  end
end
