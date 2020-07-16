class Ghc
  livecheck do
    url "https://downloads.haskell.org/~ghc/"
    regex(%r{href=.*?v?(\d+(?:\.\d{1,4})+)/?["' >]}i)
  end
end
