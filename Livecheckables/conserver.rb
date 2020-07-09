class Conserver
  livecheck do
    url "https://github.com/conserver/conserver/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
