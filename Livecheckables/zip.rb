class Zip
  livecheck do
    regex(%r{url=.+?/v?(\d+(?:\.\d+)+)/zip\d+\.(?:t|z)})
  end
end
