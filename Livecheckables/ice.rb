class Ice
  livecheck do
    url "https://github.com/zeroc-ice/ice/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
