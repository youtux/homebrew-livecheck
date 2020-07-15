class Findent
  livecheck do
    url :stable
    regex(%r{url=.*?/findent-v?(\d+(?:\.\d+)+)\.(?:t|z)})
  end
end
