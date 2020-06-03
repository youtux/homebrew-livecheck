class Mapnik
  livecheck do
    url "https://github.com/mapnik/mapnik/releases"
    regex(%r{href="/mapnik/mapnik/tree/v?([0-9.]+)})
  end
end
