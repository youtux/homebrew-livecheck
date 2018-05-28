class Nsd
  livecheck :url => "https://www.nlnetlabs.nl/projects/nsd/",
            :regex => %r{Most Recent Version.*?href=".*?/nsd-([0-9\.]+)\.t}m
end
