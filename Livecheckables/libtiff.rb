class Libtiff
  livecheck do
    url "https://download.osgeo.org/libtiff/"
    regex(/href="tiff-([0-9\.\-]+)\.t/)
  end
end
