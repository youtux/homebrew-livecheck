class Gphoto2
  livecheck do
    url :stable
    regex(%r{url=.*?/gphoto2[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
