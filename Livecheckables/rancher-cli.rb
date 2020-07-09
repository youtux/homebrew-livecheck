class RancherCli
  livecheck do
    url "https://github.com/rancher/cli/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
