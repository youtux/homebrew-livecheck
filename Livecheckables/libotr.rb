class Libotr
  livecheck do
    url :homepage
    regex(/href=.*?libotr-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
