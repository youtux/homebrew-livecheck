class Libcuefile
  livecheck do
    url "https://www.musepack.net/index.php?pg=src"
    regex(/href=.*?libcuefile[._-]v?(r\d+)\.t/i)
  end
end
