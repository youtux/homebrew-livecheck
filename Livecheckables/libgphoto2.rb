class Libgphoto2
  livecheck do
    url :stable
    regex(%r{url=.*?/libgphoto2[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
