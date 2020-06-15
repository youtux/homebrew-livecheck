class Libftdi
  livecheck do
    url "https://www.intra2net.com/en/developer/libftdi/download.php"
    regex(/href=.*?libftdi1-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
