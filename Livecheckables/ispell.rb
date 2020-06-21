class Ispell
  livecheck do
    url :homepage
    regex(/href=.*?ispell-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
