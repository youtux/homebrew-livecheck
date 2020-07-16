class Ifstat
  livecheck do
    url :homepage
    regex(/href=["']?ifstat[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
