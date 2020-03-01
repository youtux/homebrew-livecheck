class Bgpdump
  livecheck :url   => "https://www.ris.ripe.net/source/bgpdump/?C=M&O=D",
            :regex => /href="libbgpdump-(\d+(?:\.\d+)+)\.[^"]+"/
end
