class Epstool
  livecheck do
    url :homepage
    regex(/href=.*?epstool-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
