class Traildb
  livecheck do
    url "https://github.com/traildb/traildb.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
