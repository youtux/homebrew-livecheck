class Libpq
  livecheck do
    url "https://ftp.postgresql.org/pub/source/?C=M&O=A"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/?["' >]})
  end
end
