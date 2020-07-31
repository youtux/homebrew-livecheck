class Shapelib
  livecheck do
    url "https://download.osgeo.org/shapelib/"
    regex(/href=.*?shapelib[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
