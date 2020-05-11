class Aview
  livecheck :url   => "https://sourceforge.net/projects/aa-project/rss",
            :regex => %r{url=.+?/aview-v?(\d+(?:\.\d+)+(?:[a-z]+\d*)?)\.t}
end
