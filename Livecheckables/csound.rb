class Csound
  livecheck do
    url "https://github.com/csound/csound/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
