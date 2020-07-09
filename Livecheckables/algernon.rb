class Algernon
  livecheck do
    url "https://github.com/xyproto/algernon/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
