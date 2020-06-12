class Rethinkdb
  livecheck do
    url "https://github.com/rethinkdb/rethinkdb.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
