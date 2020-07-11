class Yuicompressor
  livecheck do
    url "https://github.com/yui/yuicompressor/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
