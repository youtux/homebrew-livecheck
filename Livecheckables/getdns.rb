class Getdns
  # We check the GitHub releases instead of https://getdnsapi.net/releases/,
  # since the aforementioned first-party URL has a tendency to lead to an
  # `execution expired` error.
  livecheck do
    url "https://github.com/getdnsapi/getdns/releases/latest"
    regex(%r{href=.+?/tag/v?(\d+(?:\.\d+)+)["']})
  end
end
