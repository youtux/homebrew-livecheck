class MecabKoDic
  livecheck do
    url :stable
    regex(/href=.*?mecab-ko-dic[._-]v?(\d+(?:\.\d+)+-\d+)\.t/i)
  end
end
