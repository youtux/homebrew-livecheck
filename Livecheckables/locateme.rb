class Locateme
  livecheck do
    url :stable
    regex(%r{url=.*?/LocateMe[._-]v?(\d+(?:\.\d+)+)\.(?:t|z)}i)
  end
end
