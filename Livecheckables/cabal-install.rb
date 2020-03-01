class CabalInstall
  livecheck :url   => "https://www.haskell.org/cabal/download.html",
            :regex => /cabal-install tool \(version ([0-9\.]+)/
end
