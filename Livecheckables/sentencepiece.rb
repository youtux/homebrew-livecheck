class Sentencepiece
  livecheck do
    url "https://github.com/google/sentencepiece/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["']}i)
  end
end
