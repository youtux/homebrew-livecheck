class Nmap
  livecheck :url   => "https://nmap.org/dist/",
            :regex => /href="nmap-([0-9,\.]+)\.t/
end
