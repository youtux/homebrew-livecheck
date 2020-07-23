class Gdal
  livecheck do
    url "https://download.osgeo.org/gdal/CURRENT/"
    regex(/href=.*?gdal-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
