class HaskellStack
  livecheck do
    url "https://github.com/commercialhaskell/stack/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
