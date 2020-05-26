class Bgpdump
  livecheck do
    url "https://github.com/RIPE-NCC/bgpdump.git"
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end
end
