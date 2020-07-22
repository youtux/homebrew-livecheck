class Homebank
  livecheck do
    url "http://homebank.free.fr/public/"
    regex(/HREF="homebank-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
