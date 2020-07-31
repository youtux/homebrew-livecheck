class Libngspice
  livecheck do
    url "https://sourceforge.net/projects/ngspice/rss"
    regex(%r{url=.*?/ngspice[._-]v?(\d+(?:\.\d+)*)\.t}i)
  end
end
