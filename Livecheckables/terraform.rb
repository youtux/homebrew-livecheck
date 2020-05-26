class Terraform
  livecheck do
    url "https://www.terraform.io/downloads.html"
    regex(%r{href="https://releases.hashicorp.com/terraform/([0-9\.]+)})
  end
end
