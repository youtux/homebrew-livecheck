class Libowfat
  livecheck do
    url :homepage
    regex(/href=.*?libowfat-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
