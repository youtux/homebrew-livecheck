class Itpp
  livecheck do
    url "https://sourceforge.net/projects/itpp/rss"
    regex(%r{url=.*?/itpp-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
