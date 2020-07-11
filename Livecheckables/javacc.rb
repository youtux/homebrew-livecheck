class Javacc
  livecheck do
    url "https://github.com/javacc/javacc/releases/latest"
    regex(%r{href=.*?/tag/javacc[._-]v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
