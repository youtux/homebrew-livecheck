class Postgis
  livecheck :url   => "https://postgis.net/source/",
            :regex => %r{href=".*?/postgis-([0-9\.]+)\.t}
end
