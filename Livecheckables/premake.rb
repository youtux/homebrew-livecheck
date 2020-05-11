class Premake
  livecheck :url   => "https://sourceforge.net/projects/premake/rss",
            :regex => %r{url=.+?/premake-v?(\d+(?:\.\d+)+(?:-[a-z]+\d+)?)-src\.(?:t|z)}
end
