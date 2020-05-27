class Ghc
  livecheck do
    url "https://www.haskell.org/ghc/download.html"
    regex(/href="download_ghc_(?:\d+(?:_?\d+)+).html">(\d+(?:\.\d+)+)</)
  end
end
