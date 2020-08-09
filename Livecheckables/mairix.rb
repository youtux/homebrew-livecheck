class Mairix
  livecheck do
    url :stable
    regex(%r{url=.*?/mairix[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
