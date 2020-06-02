class RancherCli
  livecheck do
    url "https://github.com/rancher/cli/releases"
    regex(%r{latest.*?href="/rancher/cli/tree/v?([0-9.]+)}m)
  end
end
