class HaskellStack
  livecheck do
    url "https://github.com/commercialhaskell/stack/releases"
    regex(%r{latest.*?href="/commercialhaskell/stack/tree/v?([0-9\.]+)}m)
  end
end
