class Nco
  livecheck do
    url "https://github.com/nco/nco/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
