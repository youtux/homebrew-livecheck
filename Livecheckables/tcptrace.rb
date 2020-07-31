class Tcptrace
  # This site has a history of going down for periods of time, which is why the
  # formula uses mirrors. This is something to be aware of if livecheck is
  # unable to find versions.
  livecheck do
    url "http://www.tcptrace.org/download.shtml"
    regex(/href=.*?tcptrace[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
