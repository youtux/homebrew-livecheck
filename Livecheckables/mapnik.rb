class Mapnik
  livecheck do
    url "https://github.com/mapnik/mapnik/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
