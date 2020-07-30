class Wandio
  livecheck do
    url :homepage
    regex(/href=.*?wandio[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
