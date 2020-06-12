class Ncview
  livecheck do
    url "http://ftp.debian.org/debian/pool/main/n/ncview/"
    regex(/href=.*?ncview_v?(\d+(?:\.\d+)+)\+ds\.orig\.t/i)
  end
end
