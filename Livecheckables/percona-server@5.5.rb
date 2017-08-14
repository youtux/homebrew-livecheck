class PerconaServerAT55
  livecheck :url => "https://www.percona.com/downloads/Percona-Server-5.5/LATEST/",
            :regex => %r{value="Percona-Server-5.5/Percona-Server-([0-9\-\.]+)"}
end
