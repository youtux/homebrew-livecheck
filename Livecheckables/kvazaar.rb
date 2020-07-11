class Kvazaar
  livecheck do
    url "https://github.com/ultravideo/kvazaar/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
