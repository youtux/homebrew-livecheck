class ClozureCl
  livecheck do
    url "https://github.com/Clozure/ccl/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
