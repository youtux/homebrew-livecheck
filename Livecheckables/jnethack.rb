class Jnethack
  livecheck do
    url "https://osdn.net/projects/jnethack/releases/rss"
    regex(%r{url=.+?/jnethack-v?(\d+(?:\.\d+)+(?:-\d+(?:\.\d+)+)?)\.})
  end
end
