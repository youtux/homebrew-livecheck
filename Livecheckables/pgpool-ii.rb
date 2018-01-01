class PgpoolIi
  livecheck :url => "https://www.pgpool.net/mediawiki/index.php/Downloads",
            :regex => /download\.php\?f=pgpool\-II\-([0-9\.]+)\.t/
end
