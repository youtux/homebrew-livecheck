class Bcftools
  livecheck do
    url "https://github.com/samtools/bcftools/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["']}i)
  end
end
