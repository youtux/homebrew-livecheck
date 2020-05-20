class Csvkit
  livecheck :url   => "https://pypi.org/simple/csvkit/",
            :regex => %r{href=".*?/csvkit-([0-9\.]+)\.t}
end
