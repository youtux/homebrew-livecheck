class Ghc
  livecheck :url => "https://downloads.haskell.org/~ghc/latest/",
            :regex => /href="ghc-([0-9\.]+)-/
end
