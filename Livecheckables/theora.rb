class Theora
  livecheck :url   => "https://www.theora.org/downloads/",
            :regex => /href=.+?libtheora-v?(\d+(?:\.\d+)+)\.t/
end
