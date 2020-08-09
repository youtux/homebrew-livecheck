class W3m
  livecheck do
    url :stable
    regex(%r{url=.*?/w3m[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
