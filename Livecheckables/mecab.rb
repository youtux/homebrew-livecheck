class Mecab
  livecheck do
    url :homepage
    regex(/mecab-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
