class Geos
  livecheck :url => "https://trac.osgeo.org/geos",
            :regex => %r{href="http://download.osgeo.org/geos/geos-(\d+.\d+.\d+).tar.bz2"}
end
