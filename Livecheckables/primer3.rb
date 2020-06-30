class Primer3
  livecheck do
    url :stable
    regex(%r{url=.+?/primer3-v?(\d+(?:\.\d+)+)\.t})
  end
end
