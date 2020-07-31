class Dex2jar
  livecheck do
    url :stable
    regex(%r{url=.*?/dex2jar[._-]v?(\d+(?:\.\d+)+)\.(?:t|z)}i)
  end
end
