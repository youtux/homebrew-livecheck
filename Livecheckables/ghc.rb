class Ghc
  livecheck do
    url "https://downloads.haskell.org/~ghc/"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end
end
