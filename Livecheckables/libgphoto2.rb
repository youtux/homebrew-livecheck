class Libgphoto2
  livecheck do
    url "https://sourceforge.net/projects/gphoto/"
    regex(%r{.*?/libgphoto2-([0-9.]+)\.t}i)
  end
end
