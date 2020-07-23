class Lbdb
  livecheck do
    url "https://www.spinnaker.de/lbdb/download/"
    regex(/href=.*?lbdb_v?(\d+(?:\.\d+)+)\.t/i)
  end
end
