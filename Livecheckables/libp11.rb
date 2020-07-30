class Libp11
  livecheck do
    url :head
    regex(/^libp11[._-]v?(\d+(?:\.\d+)+)$/i)
  end
end
