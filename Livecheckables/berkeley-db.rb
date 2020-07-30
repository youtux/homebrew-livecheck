class BerkeleyDb
  livecheck do
    url "https://www.oracle.com/technetwork/database/" \
    "database-technologies/berkeleydb/downloads/index.html"
    regex(%r{href=.*?/berkeley-db/db[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
