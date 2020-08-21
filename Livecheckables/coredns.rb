class Coredns
  livecheck do
    url "https://github.com/coredns/coredns/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
