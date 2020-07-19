class Dex2jar
  livecheck do
    url :stable
    regex(%r{url=.*?/dex2jar-v?(\d+(?:\.\d+)+)\.(?:t|z)}i)
  end
end
