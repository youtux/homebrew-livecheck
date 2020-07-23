class Netpbm
  livecheck do
    url "https://sourceforge.net/p/netpbm/code/HEAD/tree/stable/"
    regex(/Release v?(\d+(?:\.\d+)+)/i)
  end
end
