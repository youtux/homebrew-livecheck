class Iftop
  # We have to allow the regex to match prerelease versions (e.g., 1.0pre4)
  # until there's a new stable version. The newest version was released on
  # 2014-01-19, so it could be a while.
  livecheck do
    url "https://www.ex-parrot.com/pdw/iftop/download/"
    regex(/href=.*?iftop[._-]v?(\d+(?:\.\d+)+(?:pre\d+)?)\.t/i)
  end
end
