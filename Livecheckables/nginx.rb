class Nginx
  livecheck do
    url :homepage
    regex(%r{nginx-([0-9.]+)</a>\nmainline version has been released})
  end
end
