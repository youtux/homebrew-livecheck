class Antlr
  livecheck do
    url "https://www.antlr.org/download/"
    regex(/href=.*?antlr[._-]v?(\d+(?:\.\d+)+)-complete\.jar/i)
  end
end
