class PgpoolIi
  livecheck do
    url "https://www.pgpool.net/mediawiki/index.php/Downloads"
    regex(/download\.php\?f=pgpool-II-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
