class Qmmp
  livecheck do
    url "https://sourceforge.net/projects/qmmp-dev/rss"
    regex(%r{url=.*?/qmmp[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
