class Qscintilla2
  livecheck do
    url "https://www.riverbankcomputing.com/software/qscintilla/download"
    regex(/href=.*?QScintilla(?:.gpl)?-(\d+(?:\.\d+)+)\.t/i)
  end
end
