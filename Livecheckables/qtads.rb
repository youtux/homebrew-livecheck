class Qtads
  livecheck do
    url "https://github.com/realnc/qtads/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
