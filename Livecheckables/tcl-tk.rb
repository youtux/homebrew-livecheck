class TclTk
  livecheck do
    url "https://sourceforge.net/projects/tcl/rss"
    regex(%r{url=.+?/(?:tcl|tk).?v?(\d+(?:\.\d+)+)-src\.t}i)
  end
end
