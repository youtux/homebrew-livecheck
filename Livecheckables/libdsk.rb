class Libdsk
  livecheck :url   => "https://www.seasip.info/Unix/LibDsk/",
            :regex => %r{Stable version.*?/libdsk-([0-9\.]+)\.t}m
end
