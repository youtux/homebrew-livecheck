class Udis86
  livecheck :url   => "https://sourceforge.net/projects/udis86/rss",
            :regex => %r{url=.+?/udis86-v?(\d+(?:\.\d+)+)\.t}
end
