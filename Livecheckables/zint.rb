class Zint
  livecheck :url   => "https://sourceforge.net/projects/zint/rss",
            :regex => %r{url=.+?/zint-v?(\d+(?:\.\d+)+)\.t}
end
