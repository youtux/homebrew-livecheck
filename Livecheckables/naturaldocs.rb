class Naturaldocs
  livecheck do
    regex(%r{url=.+?/Natural.?Docs.v?(\d+(?:\.\d+)+)\.(?:t|z)}i)
  end
end
