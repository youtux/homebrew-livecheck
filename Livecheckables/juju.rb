class Juju
  livecheck do
    url "https://github.com/juju/juju/releases/latest"
    regex(%r{href=.+?/tag/juju-v?(\d+(?:\.\d+)+)}i)
  end
end
