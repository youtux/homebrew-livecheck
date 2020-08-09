class Udis86
  livecheck do
    url :stable
    regex(%r{url=.*?/udis86[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
