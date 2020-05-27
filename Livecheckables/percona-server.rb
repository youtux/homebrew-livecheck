class PerconaServer
  livecheck do
    url "https://www.percona.com/downloads/Percona-Server-LATEST/"
    regex(%r{value="Percona-Server-LATEST/Percona-Server-([0-9\-\.]+)"})
  end
end
