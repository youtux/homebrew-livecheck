class PerconaServerMongodb
  livecheck :url => "https://www.percona.com/downloads/percona-server-mongodb-LATEST/",
            :regex => %r{value="percona-server-mongodb-LATEST/percona-server-mongodb-([0-9\-\.]+)"}
end
