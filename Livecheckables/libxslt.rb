class Libxslt
  livecheck do
    url "http://xmlsoft.org/sources/"
    regex(/href=.*?libxslt-([0-9.]+)\.t/)
  end
end
