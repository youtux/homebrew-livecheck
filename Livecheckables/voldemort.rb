class Voldemort
  livecheck :url => "https://github.com/voldemort/voldemort/releases",
            :regex => %r{href="/voldemort/voldemort/tree/release-([0-9\.]+)-cutoff}
end
