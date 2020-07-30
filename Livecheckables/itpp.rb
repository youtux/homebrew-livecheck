class Itpp
  livecheck do
    url "https://sourceforge.net/projects/itpp/rss"
    regex(%r{url=.*?/itpp[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
