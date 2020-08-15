class Igv
  livecheck do
    url "https://data.broadinstitute.org/igv/projects/downloads/2.8/"
    regex(/href=.*?IGV[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end
end
