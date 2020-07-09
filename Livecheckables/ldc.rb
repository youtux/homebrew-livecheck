class Ldc
  livecheck do
    url "https://github.com/ldc-developers/ldc/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
