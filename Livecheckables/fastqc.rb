class Fastqc
  livecheck do
    url "https://www.bioinformatics.babraham.ac.uk/projects/download.html"
    regex(/href=.*?fastqc[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end
end
