class Libp11
  livecheck do
    url :head
    regex(/^libp11-v?(\d+(?:\.\d+)+)$/i)
  end
end
