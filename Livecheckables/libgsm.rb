class Libgsm
  livecheck do
    url :homepage
    regex(/href=.*?gsm-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
