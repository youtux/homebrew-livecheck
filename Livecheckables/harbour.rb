class Harbour
  livecheck do
    url :stable
    regex(%r{url=.*?/harbour[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
