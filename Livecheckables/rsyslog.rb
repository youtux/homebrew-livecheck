class Rsyslog
  livecheck do
    url "https://www.rsyslog.com/"
    regex(/Current Version.+?v?(\d+(?:\.\d+)+)/m)
  end
end
