class PerconaXtrabackup
  livecheck do
    url "https://github.com/percona/percona-xtrabackup.git"
    regex(/^percona-xtrabackup-(\d+(?:\.\d+)+)$/i)
  end
end
