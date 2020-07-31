class Naturaldocs
  livecheck do
    url :stable
    regex(%r{url=.*?/Natural.?Docs[._-]v?(\d+(?:\.\d+)+)\.(?:t|z)}i)
  end
end
