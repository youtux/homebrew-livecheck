class Libgphoto2
  livecheck do
    url "https://sourceforge.net/projects/gphoto/"
    regex(%r{.*?/libgphoto2[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
