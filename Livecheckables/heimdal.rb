class Heimdal
  livecheck do
    url "https://github.com/heimdal/heimdal/releases/latest"
    regex(%r{href=.*?/tag/heimdal[._-]v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
