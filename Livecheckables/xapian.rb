class Xapian
  livecheck do
    url :homepage
    regex(/latest stable version.*?is ([0-9.]+)</m)
  end
end
