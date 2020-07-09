class Clingo
  livecheck do
    url "https://github.com/potassco/clingo/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
