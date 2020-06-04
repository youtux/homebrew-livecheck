class Libspatialite
  livecheck do
    url "http://www.gaia-gis.it/gaia-sins/libspatialite-sources/"
    regex(/href=.*?libspatialite-v?(\d+(?:\.\d+)+[a-z]?)\.t/i)
  end
end
