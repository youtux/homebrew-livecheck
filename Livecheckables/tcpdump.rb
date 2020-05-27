class Tcpdump
  livecheck do
    url "https://www.tcpdump.org/release/"
    regex(/href="tcpdump-([0-9\.]+)\.t/)
  end
end
