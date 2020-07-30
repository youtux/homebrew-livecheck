class Httrack
  livecheck do
    url "https://mirror.httrack.com/historical/"
    regex(/httrack[._-]v?(\d+(?:\.\d+)+)\./i)
  end
end
