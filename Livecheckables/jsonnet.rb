class Jsonnet
  livecheck do
    url "https://github.com/google/jsonnet/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
