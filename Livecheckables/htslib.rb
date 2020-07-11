class Htslib
  livecheck do
    url "https://github.com/samtools/htslib/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
