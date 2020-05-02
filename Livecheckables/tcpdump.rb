class Tcpdump
  livecheck :url   => "https://www.tcpdump.org/release/",
            :regex => /href="tcpdump-([0-9\.]+)\.t/
end
