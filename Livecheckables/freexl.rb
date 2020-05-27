class Freexl
  livecheck do
    url "https://www.gaia-gis.it/fossil/freexl/index"
    regex(%r{current version is <b>([0-9\.]+)</b>})
  end
end
