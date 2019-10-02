class BerkeleyDb
  livecheck :url => "https://www.oracle.com/technetwork/database/database-technologies/berkeleydb/downloads/index.html",
            :regex => %r{href="http://download\.oracle\.com/otn/berkeley-db/db-([0-9,\.]+)\.t}
end
