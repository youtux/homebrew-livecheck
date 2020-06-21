class Cloog
  livecheck do
    url "http://www.bastoul.net/cloog/download.php"
    regex(/href=.*?cloog-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
