class Sdcc
  livecheck :url   => "https://sourceforge.net/projects/sdcc/rss",
            :regex => %r{url=.+?/sdcc-src-v?(\d+(?:\.\d+)+)\.t}
end
