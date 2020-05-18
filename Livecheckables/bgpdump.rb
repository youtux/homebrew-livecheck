class Bgpdump
  livecheck :url   => "https://github.com/RIPE-NCC/bgpdump.git",
            :regex => /^v?(\d+(?:\.\d+)+)$/
end
