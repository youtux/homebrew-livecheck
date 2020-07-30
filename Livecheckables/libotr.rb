class Libotr
  livecheck do
    url :homepage
    regex(/href=.*?libotr[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
