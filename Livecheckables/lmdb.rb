class Lmdb
  livecheck do
    url :head
    regex(/^LMDB.v?(\d+(?:\.\d+)+)$/i)
  end
end
