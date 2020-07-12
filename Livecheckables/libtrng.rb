class Libtrng
  livecheck do
    url :homepage
    regex(/href=.*?trng[._-]v?(\d+(?:\.\d+)+)\.t.*?latest/i)
  end
end
