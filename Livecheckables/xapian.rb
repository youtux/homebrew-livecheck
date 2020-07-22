class Xapian
  livecheck do
    url :homepage
    regex(/latest stable version.*?is v?(\d+(?:\.\d+)+)</im)
  end
end
