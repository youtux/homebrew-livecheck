class Freexl
  livecheck :url   => "https://www.gaia-gis.it/fossil/freexl/index",
            :regex => %r{current version is <b>([0-9\.]+)</b>}
end
