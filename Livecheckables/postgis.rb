class Postgis
  livecheck do
    url "https://download.osgeo.org/postgis/source/"
    regex(/href=.*?postgis-([0-9.]+)\.t/)
  end
end
