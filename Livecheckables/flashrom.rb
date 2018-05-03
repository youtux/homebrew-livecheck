class Flashrom
  livecheck :url => "https://download.flashrom.org/releases/",
            :regex => /href="flashrom-([0-9\.]+)\.t/
end
