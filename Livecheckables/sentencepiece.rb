class Sentencepiece
  livecheck do
    url "https://github.com/google/sentencepiece.git"
    regex(/^v(\d+(?:\.\d+)+)$/)
  end
end
