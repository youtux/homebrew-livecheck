class Scummvm
  livecheck :url   => "https://www.scummvm.org/downloads/",
            :regex => %r{href=".*?/scummvm-([0-9\.]+)\.t}
end
