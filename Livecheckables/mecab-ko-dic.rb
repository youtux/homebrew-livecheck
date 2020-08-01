class MecabKoDic
  livecheck do
    url "https://bitbucket.org/eunjeon/mecab-ko-dic/downloads/"
    regex(/href=.*?mecab-ko-dic[._-]v?(\d+(?:\.\d+)+-\d+)\.t/i)
  end
end
