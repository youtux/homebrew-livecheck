class PicardTools
  livecheck do
    url "https://github.com/broadinstitute/picard/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
