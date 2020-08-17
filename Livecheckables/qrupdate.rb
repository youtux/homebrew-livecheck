class Qrupdate
  livecheck do
    url :stable
    regex(%r{url=.*?/qrupdate[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
