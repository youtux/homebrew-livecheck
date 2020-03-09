class PerconaXtrabackup
  livecheck :url   => "https://github.com/percona/percona-xtrabackup.git",
            :regex => /^percona-xtrabackup-(\d+(?:\.\d+)+)$/
end
