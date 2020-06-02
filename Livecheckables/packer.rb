class Packer
  livecheck do
    url "https://packer.io/downloads.html"
    regex(%r{href="https://releases.hashicorp.com/packer/([0-9.]+)})
  end
end
