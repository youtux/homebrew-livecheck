class BerkeleyDb
  livecheck :url   => "https://www.oracle.com/technetwork/database/" \
                       "database-technologies/berkeleydb/downloads/index.html",
            :regex => %r{href=.*?/berkeley-db/db-v?(\d+(?:\.\d+)+)\.t}
end
