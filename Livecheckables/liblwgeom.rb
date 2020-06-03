class Liblwgeom
  livecheck do
    url "https://postgis.net/source/"
    regex(%r{href=".*?/postgis-([0-9.]+)\.t})
  end
end
