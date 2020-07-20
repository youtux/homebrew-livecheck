class Mhash
  livecheck do
    url :stable
    regex(%r{url=.*?/mhash-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
