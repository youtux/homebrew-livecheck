class Sloccount
  livecheck do
    url :homepage
    regex(/href=.*?sloccount[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
