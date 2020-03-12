class Libpq
  livecheck :url   => "https://ftp.postgresql.org/pub/source/?C=M&O=A",
            :regex => %r{href="v?(\d+(?:\.\d+)+)/?"}
end
