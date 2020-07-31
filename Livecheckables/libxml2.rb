class Libxml2
  livecheck do
    url "http://xmlsoft.org/sources"
    regex(/href=.*?libxml2[._-]v?([\d.]+\.[\d.]+\.[\d.]+)\.t/i)
  end
end
