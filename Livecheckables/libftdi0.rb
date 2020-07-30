class Libftdi0
  livecheck do
    url "https://www.intra2net.com/en/developer/libftdi/download.php"
    regex(/href=.*?libftdi[._-]v?(0(?:\.\d+)+)\.t/i)
  end
end
