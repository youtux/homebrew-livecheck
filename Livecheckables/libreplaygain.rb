class Libreplaygain
  livecheck do
    url "https://www.musepack.net/index.php?pg=src"
    regex(/href=.*?libreplaygain[._-]v?(r\d+)\.t/i)
  end
end
