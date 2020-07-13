class Darkice
  livecheck do
    url "https://github.com/rafael2k/darkice/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
