class Fontconfig
  livecheck do
    url :homepage
    regex(/current stable.*? v?(\d+(?:\.\d+)+)\./i)
  end
end
