class Terraform
  livecheck do
    url "https://github.com/hashicorp/terraform/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
