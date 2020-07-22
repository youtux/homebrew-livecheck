class Nginx
  livecheck do
    url :homepage
    regex(%r{nginx-v?(\d+(?:\.\d+)+)</a>\nmainline version has been released}i)
  end
end
