class Gperftools
  livecheck do
    url "https://github.com/gperftools/gperftools/releases/latest"
    regex(%r{href=.*?/tag/gperftools[._-]v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
