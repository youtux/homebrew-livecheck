class Gphoto2
  livecheck do
    url "https://sourceforge.net/projects/gphoto/"
    regex(%r{.*?/gphoto2-([0-9.]+)\.t}i)
  end
end
