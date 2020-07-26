class Nmap
  livecheck do
    url "https://nmap.org/dist/"
    regex(/href=.*?nmap-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
