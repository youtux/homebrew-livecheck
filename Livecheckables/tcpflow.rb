class Tcpflow
  livecheck :url   => "http://downloads.digitalcorpora.org/downloads/tcpflow/",
            :regex => /href="tcpflow-v?(\d+(?:\.\d+)+)\.t/
end
