class Irrlicht
  livecheck do
    url "https://sourceforge.net/projects/irrlicht/rss"
    regex(%r{url=.*?/irrlicht-v?(\d+(?:\.\d+)+)\.(?:t|z)})
  end
end
