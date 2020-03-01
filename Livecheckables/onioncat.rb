class Onioncat
  livecheck :url   => "https://www.cypherpunk.at/ocat/download/Source/current/",
            :regex => /href="onioncat-([0-9\.]+.*?)\.t/
end
