class Libtiff
  livecheck do
    url "https://download.osgeo.org/libtiff/"
    regex(/href=.*?tiff-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
