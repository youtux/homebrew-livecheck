class Libtorch
  livecheck do
    url "https://github.com/pytorch/pytorch/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
