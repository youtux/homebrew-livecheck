class Mbedtls
  livecheck do
    url "https://github.com/ARMmbed/mbedtls/releases/latest"
    regex(%r{href=.*?/tag/(?:mbedtls[._-])?v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
