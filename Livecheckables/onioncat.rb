class Onioncat
  livecheck :url   => "https://www.cypherpunk.at/ocat/download/Source/stable/",
            :regex => /href=.+?onioncat-v?(\d+(?:\.\d+)+)\.t/
end
