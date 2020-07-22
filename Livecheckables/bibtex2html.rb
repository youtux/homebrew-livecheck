class Bibtex2html
  livecheck do
    url :homepage
    regex(/The current version is v?(\d+(?:\.\d+)+) and/i)
  end
end
