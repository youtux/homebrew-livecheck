class Wolfssl
  livecheck do
    url "https://github.com/wolfSSL/wolfssl/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)[._-]stable["' >]}i)
  end
end
