class Opensc
  livecheck do
    url "https://github.com/OpenSC/OpenSC/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
