class DcosCli
  livecheck do
    url "https://github.com/dcos/dcos-cli/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
