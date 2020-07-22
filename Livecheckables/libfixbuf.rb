class Libfixbuf
  livecheck do
    url "https://tools.netsa.cert.org/fixbuf/download.html"
    regex(%r{releases/libfixbuf-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
