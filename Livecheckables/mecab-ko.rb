class MecabKo
  livecheck do
    url :stable
    regex(/href=.*?mecab[._-]v?(\d+(?:\.\d+)+-ko-\d+(?:\.\d+)+)\.t/i)
  end
end
