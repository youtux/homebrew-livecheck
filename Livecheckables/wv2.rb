class Wv2
  livecheck do
    url :stable
    regex(%r{url=.*?/wv2-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
