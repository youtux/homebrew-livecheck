class Rsstail
  livecheck do
    url :homepage
    regex(/Latest release.*HREF="rsstail-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
