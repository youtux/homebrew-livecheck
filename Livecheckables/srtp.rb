class Srtp
  livecheck do
    url "https://github.com/cisco/libsrtp/releases"
    regex(%r{href="/cisco/libsrtp/tree/v([0-9,.]+)"})
  end
end
