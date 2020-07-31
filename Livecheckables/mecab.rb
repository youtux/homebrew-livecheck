class Mecab
  livecheck do
    url :homepage
    regex(/mecab[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
