class Yaws
  livecheck do
    url "https://github.com/erlyaws/yaws/releases/latest"
    regex(%r{href=.*?/tag/yaws[._-]v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
