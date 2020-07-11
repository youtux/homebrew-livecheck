class Sysdig
  livecheck do
    url "https://github.com/draios/sysdig/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
