class Caffe
  livecheck do
    url "https://github.com/BVLC/caffe/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
