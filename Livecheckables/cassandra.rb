class Cassandra
  livecheck do
    url "https://cassandra.apache.org/download/"
    regex(/href=.*?apache-cassandra[._-]v?(\d+(?:\.\d+)+)(?:-bin)?\.t/i)
  end
end
