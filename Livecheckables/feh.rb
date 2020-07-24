class Feh
  livecheck do
    url :homepage
    regex(/href=.*?feh-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
