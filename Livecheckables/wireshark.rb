class Wireshark
  livecheck :url => "https://www.wireshark.org/download.html",
            :regex => /Stable Release \((\d+(?:\.\d+)*)/
end
