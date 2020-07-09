class WpCli
  livecheck do
    url "https://github.com/wp-cli/wp-cli/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
