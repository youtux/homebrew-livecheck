class Gphoto2
  livecheck do
    url "https://sourceforge.net/projects/gphoto/"
    regex(%r{.*?/gphoto2-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
