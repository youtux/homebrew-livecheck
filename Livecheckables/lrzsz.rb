class Lrzsz
  livecheck do
    url :homepage
    regex(/href=.*?lrzsz-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
