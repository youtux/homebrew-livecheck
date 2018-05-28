class Pound
  livecheck :url => "http://www.apsis.ch/pound",
            :regex => %r{latest version.*?href=".*?/Pound-([0-9\.]+)\.t}
end
