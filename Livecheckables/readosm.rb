class Readosm
  livecheck do
    url "https://www.gaia-gis.it/fossil/readosm/index"
    regex(%r{current version is <b>([0-9a-z\.]+)</b>})
  end
end
