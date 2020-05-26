class Cassandra
  livecheck do
    url "https://cassandra.apache.org"
    regex(%r{href=".*?refs/tags/cassandra-([0-9\.]+)"})
  end
end
