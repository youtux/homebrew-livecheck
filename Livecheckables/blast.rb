class Blast
  livecheck do
    url "https://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/?[ '">]}i)
  end
end
