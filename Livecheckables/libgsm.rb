class Libgsm
  livecheck do
    url :homepage
    regex(/href=.*?gsm-([0-9.]+)\.t/i)
  end
end
