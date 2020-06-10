class Silk
  livecheck do
    url :homepage
    regex(%r{".*?/silk-([0-9.]+)\.t})
  end
end
