class Wolfssl
  livecheck do
    url "https://github.com/wolfSSL/wolfssl/releases"
    regex(%r{href="/wolfSSL/wolfssl/tree/v?([0-9\.]+)-stable})
  end
end
