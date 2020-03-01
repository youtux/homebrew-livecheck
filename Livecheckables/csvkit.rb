class Csvkit
  livecheck :url   => "https://pypi.python.org/simple/csvkit/",
            :regex => %r{href=".*?/csvkit-([0-9\.]+)\.t}
end
