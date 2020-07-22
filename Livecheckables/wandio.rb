class Wandio
  livecheck do
    url :homepage
    regex(/href=.*?wandio-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
