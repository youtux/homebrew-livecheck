class Tcpflow
  livecheck do
    url "http://downloads.digitalcorpora.org/downloads/tcpflow/"
    regex(/href=.*?tcpflow-v?(\d+(?:\.\d+)+)\.t/)
  end
end
