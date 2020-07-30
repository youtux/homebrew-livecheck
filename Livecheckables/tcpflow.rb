class Tcpflow
  livecheck do
    url "http://downloads.digitalcorpora.org/downloads/tcpflow/"
    regex(/href=.*?tcpflow[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
