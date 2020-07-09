class Teleport
  livecheck do
    url "https://github.com/gravitational/teleport/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
