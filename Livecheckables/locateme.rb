class Locateme
  livecheck do
    url :stable
    regex(%r{url=.*?/LocateMe-v?(\d+(?:\.\d+)+)\.(?:t|z)}i)
  end
end
