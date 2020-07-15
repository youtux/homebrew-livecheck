class Gdal
  livecheck do
    url "https://download.osgeo.org/gdal/CURRENT/"
    regex(/href=.*?gdal-([0-9.]+)\.t/)
  end
end
