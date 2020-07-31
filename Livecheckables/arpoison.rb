class Arpoison
  livecheck do
    url :homepage
    regex(/href=.*?arpoison[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
