class Tintin
  livecheck do
    url "https://github.com/scandum/tintin/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
