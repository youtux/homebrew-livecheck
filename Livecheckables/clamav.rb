class Clamav
  livecheck :url => "https://www.clamav.net/downloads",
            :regex => %r{href=".*?/clamav-([0-9\.]+)\.t}
end
