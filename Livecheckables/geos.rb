class Geos
  livecheck do
    url "https://download.osgeo.org/geos/"
    regex(/href=.+geos-v?(\d+(?:\.\d+)+)\.t/)
  end
end
