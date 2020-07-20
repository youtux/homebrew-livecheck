class PerconaToolkit
  livecheck do
    url "https://www.percona.com/downloads/percona-toolkit/LATEST/"
    regex(%r{value="percona-toolkit/([0-9\-.]+)"}i)
  end
end
