class Rsyslog
  livecheck do
    url :homepage
    regex(/Current Version.+?v?(\d+(?:\.\d+)+)/m)
  end
end
