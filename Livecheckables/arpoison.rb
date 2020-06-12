class Arpoison
  livecheck do
    url :homepage
    regex(/href=.*?arpoison-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
