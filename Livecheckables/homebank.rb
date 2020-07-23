class Homebank
  livecheck do
    url "http://homebank.free.fr/public/"
    regex(/href=.*?homebank-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
