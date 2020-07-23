class Rsstail
  livecheck do
    url :homepage
    regex(/Latest release.*href=.*?rsstail-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
