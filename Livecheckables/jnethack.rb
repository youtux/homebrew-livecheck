class Jnethack
  livecheck :url   => "https://osdn.net/projects/jnethack/releases/rss",
            :regex => %r{url=.+?/jnethack-v?(\d+(?:\.\d+)+(?:-\d+(?:\.\d+)+)?)\.}
end
