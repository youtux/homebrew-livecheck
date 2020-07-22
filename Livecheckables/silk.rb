class Silk
  livecheck do
    url :homepage
    regex(%r{".*?/silk-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
