class Aview
  livecheck do
    url "https://sourceforge.net/projects/aa-project/rss"
    regex(%r{url=.*?/aview[._-]v?(\d+(?:\.\d+)+(?:[a-z]+\d*)?)\.t}i)
  end
end
