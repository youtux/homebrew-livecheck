class Hercules
  livecheck :url   => "http://www.hercules-390.eu/",
            :regex => %r{href=".*?/hercules-([0-9\.]+)\.t}
end
