class Lbdb
  livecheck do
    url "https://www.spinnaker.de/lbdb/download/"
    regex(/href=.*?lbdb_([0-9.]+)\.t/)
  end
end
