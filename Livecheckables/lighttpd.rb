class Lighttpd
  livecheck do
    url "https://download.lighttpd.net/lighttpd/releases-1.4.x/"
    regex(/href=.*?lighttpd-([0-9,.]+)\.t/i)
  end
end
