class Libtrace
  livecheck do
    url :homepage
    regex(/href=.*?libtrace[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
