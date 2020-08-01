class PerconaXtrabackup
  livecheck do
    url "https://github.com/percona/percona-xtrabackup.git"
    regex(/^percona-xtrabackup[._-]v?(\d+(?:\.\d+)+)$/i)
  end
end
