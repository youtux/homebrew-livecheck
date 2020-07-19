class Homebank
  livecheck do
    url "http://homebank.free.fr/public/"
    regex(/HREF="homebank-([0-9.]+)\.t/i)
  end
end
