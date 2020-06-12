class Musepack
  livecheck do
    url "https://www.musepack.net/index.php?pg=src"
    regex(/href=.*?musepack[._-]src[._-]v?(r\d+)\.t/i)
  end
end
