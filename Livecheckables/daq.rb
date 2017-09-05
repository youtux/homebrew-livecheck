class Daq
  livecheck :url => "https://www.snort.org/downloads",
            :regex => %r{id="snort_stable_version">.*?href="/downloads/snort/daq-([0-9\.]+)\.t}m
end
