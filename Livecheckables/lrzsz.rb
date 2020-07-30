class Lrzsz
  livecheck do
    url :homepage
    regex(/href=.*?lrzsz[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
