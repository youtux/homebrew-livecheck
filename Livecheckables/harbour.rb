class Harbour
  livecheck :url   => "https://sourceforge.net/projects/harbour-project/rss",
            :regex => %r{url=.+?/harbour-v?(\d+(?:\.\d+)+)\.t}
end
