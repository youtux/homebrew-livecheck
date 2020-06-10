class Cassandra
  livecheck do
    url :homepage
    regex(%r{href=".*?refs/tags/cassandra-([0-9.]+)"})
  end
end
