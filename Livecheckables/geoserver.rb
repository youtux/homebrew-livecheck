class Geoserver
  # GeoServer releases contain a large number of files for each version, so the
  # SourceForge RSS feed may only contain the latest version (which may have a
  # different major/minor version than the latest stable). We check the GitHub
  # repo tags here instead, to make sure we get all the latest versions.
  livecheck do
    url "https://github.com/geoserver/geoserver"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
