class Zip
  livecheck do
    url :stable
    regex(%r{url=.*?/v?(\d+(?:\.\d+)+)/zip\d+\.(?:t|z)}i)
  end
end
