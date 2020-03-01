class TclTk
  livecheck :url   => "https://www.tcl-lang.org/software/tcltk/download.html",
            :regex => %r{href="[^"]+/tcl([\d\.]+)-src\.tar\.[a-z]+"}
end
