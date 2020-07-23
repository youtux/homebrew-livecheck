class Httrack
  livecheck do
    url "https://mirror.httrack.com/historical/"
    regex(/httrack-v?(\d+(?:\.\d+)+)\./i)
  end
end
