class PerconaToolkit
  livecheck :url => "https://www.percona.com/downloads/percona-toolkit/LATEST/",
            :regex => %r{value="percona-toolkit/([0-9\-\.]+)"}
end
