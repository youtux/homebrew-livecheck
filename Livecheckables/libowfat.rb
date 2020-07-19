class Libowfat
  livecheck do
    url :homepage
    regex(/href=.*?libowfat-([0-9.]+)\.t/i)
  end
end
