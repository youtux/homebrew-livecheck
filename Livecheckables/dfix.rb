class Dfix
  livecheck do
    url "https://code.dlang.org/packages/dfix"
    regex(%r{"badge">([0-9.]+)</strong>}i)
  end
end
