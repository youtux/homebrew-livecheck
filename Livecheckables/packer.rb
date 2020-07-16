class Packer
  livecheck do
    url "https://github.com/hashicorp/packer/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
