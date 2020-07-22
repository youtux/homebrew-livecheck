class Dfix
  livecheck do
    url "https://code.dlang.org/packages/dfix"
    regex(%r{"badge">v?(\d+(?:\.\d+)+)</strong>}i)
  end
end
