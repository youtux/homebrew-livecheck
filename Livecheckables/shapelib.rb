class Shapelib
  livecheck do
    url "https://download.osgeo.org/shapelib/"
    regex(/href=.*?shapelib-([0-9.]+)\.t/)
  end
end
