class PerconaXtrabackup
  livecheck :url   => "https://www.percona.com/downloads/XtraBackup/LATEST/",
            :regex => %r{value="XtraBackup/Percona-XtraBackup-([0-9\-\.]+)"}
end
