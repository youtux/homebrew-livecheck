class Nmap
  livecheck do
    url "https://nmap.org/dist/"
    regex(/href="nmap-([0-9,\.]+)\.t/)
  end
end
