class Hashpump
  livecheck do
    url "https://github.com/bwall/HashPump/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
