class Nginx
  livecheck do
    url :homepage
    regex(%r{nginx[._-]v?(\d+(?:\.\d+)+)</a>\nmainline version has been released}i)
  end
end
