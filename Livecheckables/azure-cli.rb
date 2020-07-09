class AzureCli
  livecheck do
    url "https://github.com/Azure/azure-cli/releases/latest"
    regex(%r{href=.*?/tag/azure-cli[._-]v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
