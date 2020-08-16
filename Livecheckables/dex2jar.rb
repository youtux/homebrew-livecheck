class Dex2jar
  livecheck do
    url :stable
    regex(%r{url=.*?/dex2jar[._-]v?(\d+(?:\.\d+)+)\.(?:t|zip)}i)
  end
end
