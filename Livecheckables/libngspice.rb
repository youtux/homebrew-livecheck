class Libngspice
  livecheck do
    url "https://sourceforge.net/projects/ngspice/rss"
    regex(%r{url=.+?/ngspice-v?(\d+(?:\.\d+)*)\.t})
  end
end
