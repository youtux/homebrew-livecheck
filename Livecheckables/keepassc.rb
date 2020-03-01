class Keepassc
  livecheck :url   => "https://pypi.python.org/simple/keepassc/",
            :regex => %r{href=".*?/keepassc-([0-9\.]+)\.t}
end
