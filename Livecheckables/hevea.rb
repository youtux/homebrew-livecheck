class Hevea
  livecheck do
    url :homepage
    regex(/Current version is v?(\d+(?:\.\d+)+)\./i)
  end
end
