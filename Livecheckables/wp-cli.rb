class WpCli
  livecheck do
    url "https://github.com/wp-cli/wp-cli/releases/latest"
    regex(/href=".*?v?(\d+(?:\.\d+)+)"/)
  end
end
