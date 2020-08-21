class Inlets
  livecheck do
    url "https://github.com/inlets/inlets/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
