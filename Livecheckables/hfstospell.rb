class Hfstospell
  livecheck do
    url "https://github.com/hfst/hfst-ospell/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
