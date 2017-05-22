class Tor
  livecheck :url => "https://www.torproject.org/download/download.html.en",
            :regex => /The current stable version of Tor is ([0-9,\.]+)\. /
end
