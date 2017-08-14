class PerconaServerAT56
  livecheck :url => "https://www.percona.com/downloads/Percona-Server-5.6/LATEST/",
            :regex => %r{value="Percona-Server-5.6/Percona-Server-([0-9\-\.]+)"}
end
