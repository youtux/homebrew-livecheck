class Srtp
  livecheck do
    url "https://github.com/cisco/libsrtp/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
