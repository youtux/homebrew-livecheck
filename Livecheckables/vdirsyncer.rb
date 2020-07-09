class Vdirsyncer
  livecheck do
    url "https://github.com/pimutils/vdirsyncer/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
