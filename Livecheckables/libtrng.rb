class Libtrng
  livecheck do
    url :homepage
    regex(/href=trng-([0-9.]+)\.t.*?latest/)
  end
end
