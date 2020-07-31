class Jnethack
  livecheck do
    url "https://osdn.net/projects/jnethack/releases/rss"
    regex(%r{url=.*?/jnethack[._-]v?(\d+(?:\.\d+)+(?:-\d+(?:\.\d+)+)?)\.}i)
  end
end
