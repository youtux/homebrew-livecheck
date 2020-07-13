class Libxml2
  livecheck do
    url "http://xmlsoft.org/sources"
    regex(/href=.*?libxml2-([\d.]+\.[\d.]+\.[\d.]+)\.t/)
  end
end
