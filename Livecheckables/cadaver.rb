class Cadaver
  livecheck do
    url :homepage
    regex(/href=.*?cadaver[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
