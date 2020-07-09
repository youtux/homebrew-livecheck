class Jdupes
  livecheck do
    url "https://github.com/jbruchon/jdupes/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
