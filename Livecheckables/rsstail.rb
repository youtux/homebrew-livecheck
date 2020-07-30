class Rsstail
  livecheck do
    url :homepage
    regex(/Latest release.*href=.*?rsstail[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
