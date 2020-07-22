class Postgis
  livecheck do
    url "https://download.osgeo.org/postgis/source/"
    regex(/href=.*?postgis-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
