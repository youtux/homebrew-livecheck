class Qmmp
  livecheck do
    url :stable
    regex(%r{url=.*?/qmmp[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
