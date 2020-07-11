class Nanomsg
  livecheck do
    url "https://github.com/nanomsg/nanomsg/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
