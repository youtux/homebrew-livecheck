class Fantom
  livecheck :url => "https://bitbucket.org/fantom/fan-1.0/downloads/",
            :regex => %r{href=".*?/fantom-([0-9\.]+)\.z}
end
