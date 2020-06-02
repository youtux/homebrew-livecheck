class AzureCli
  livecheck do
    url "https://github.com/Azure/azure-cli/releases"
    regex(%r{href="/Azure/azure-cli/releases/tag/azure-cli-([\d.]+)"})
  end
end
