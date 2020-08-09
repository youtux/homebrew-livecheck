class Lame
  livecheck do
    url :stable
    regex(%r{url=.*?/lame[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
