class Jq
  livecheck do
    url "https://github.com/stedolan/jq/releases/latest"
    regex(%r{href=.*?/tag/jq[._-]v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
