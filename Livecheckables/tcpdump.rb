class Tcpdump
  livecheck :url   => "http://www.tcpdump.org/release/",
            :regex => /href="tcpdump-([0-9\.]+)\.t/
end
