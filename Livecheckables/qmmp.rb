class Qmmp
  livecheck do
    url "https://sourceforge.net/projects/qmmp-dev/rss"
    regex(%r{url=.*?/qmmp-v?(\d+(?:\.\d+)+)\.t})
  end
end
