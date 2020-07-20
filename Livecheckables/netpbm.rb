class Netpbm
  livecheck do
    url "https://sourceforge.net/p/netpbm/code/HEAD/tree/stable/"
    regex(/Release ([0-9.]+)/i)
  end
end
