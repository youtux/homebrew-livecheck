class W3m
  livecheck :url   => "https://sourceforge.net/projects/w3m/rss",
            :regex => %r{url=.+?/w3m-v?(\d+(?:\.\d+)+)\.t}
end
