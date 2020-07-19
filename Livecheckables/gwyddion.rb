class Gwyddion
  livecheck do
    url "http://gwyddion.net/download.php"
    regex(/stable version Gwyddion ([0-9.]+):/i)
  end
end
