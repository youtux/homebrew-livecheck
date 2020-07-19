class Findent
  livecheck do
    url :stable
    regex(%r{url=.*?/findent-v?(\d+(?:\.\d+)+)\.(?:t|z)}i)
  end
end
