class Silk
  livecheck do
    url "https://tools.netsa.cert.org/silk/"
    regex(%r{".*?/silk-([0-9.]+)\.t})
  end
end
