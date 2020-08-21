class Gluon
  livecheck do
    url "https://github.com/gluon-lang/gluon/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
