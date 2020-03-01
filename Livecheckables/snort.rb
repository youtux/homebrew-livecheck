class Snort
  livecheck :url   => "https://www.snort.org/downloads",
            :regex => %r{href=".*?/snort-([0-9\.]+)\.t}
end
