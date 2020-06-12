class Tcptrace
  livecheck do
    url "http://www.tcptrace.org/download.shtml"
    regex(/href=.*?tcptrace-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
