class Dynamips
  livecheck do
    url "https://github.com/GNS3/dynamips/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
