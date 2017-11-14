class Ice
  livecheck :url => "https://zeroc.com/downloads/ice",
            :regex => %r{/download/Ice/.*?/Ice.*?-([0-9\.]+)\.d}
end
