class Gauche
  livecheck do
    url "https://sourceforge.net/projects/gauche/rss"
    regex(%r{url=.*?/Gauche-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
