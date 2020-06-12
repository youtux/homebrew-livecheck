class Ifstat
  livecheck do
    url :homepage
    regex(/href=['"]?ifstat-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
