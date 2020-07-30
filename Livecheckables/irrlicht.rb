class Irrlicht
  livecheck do
    url "https://sourceforge.net/projects/irrlicht/rss"
    regex(%r{url=.*?/irrlicht[._-]v?(\d+(?:\.\d+)+)\.(?:t|z)}i)
  end
end
