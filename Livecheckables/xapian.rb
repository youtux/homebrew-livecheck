class Xapian
  livecheck do
    url "https://xapian.org/"
    regex(/latest stable version.*?is ([0-9.]+)</m)
  end
end
