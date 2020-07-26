class Lighttpd
  livecheck do
    url "https://download.lighttpd.net/lighttpd/releases-1.4.x/"
    regex(/href=.*?lighttpd-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
