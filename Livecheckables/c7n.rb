class C7n
  livecheck do
    url "https://github.com/cloud-custodian/cloud-custodian/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
