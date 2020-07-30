class PgpoolIi
  livecheck do
    url "https://www.pgpool.net/mediawiki/index.php/Downloads"
    regex(/download\.php\?f=pgpool-II[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
