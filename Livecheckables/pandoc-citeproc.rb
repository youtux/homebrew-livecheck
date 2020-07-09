class PandocCiteproc
  livecheck do
    url "https://github.com/jgm/pandoc-citeproc/releases"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
