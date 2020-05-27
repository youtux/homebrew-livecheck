class Locateme
  livecheck do
    regex(%r{url=.+?/LocateMe-v?(\d+(?:\.\d+)+)\.(?:t|z)}i)
  end
end
