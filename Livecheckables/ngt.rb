class Ngt
  livecheck do
    url "https://github.com/yahoojapan/NGT/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
