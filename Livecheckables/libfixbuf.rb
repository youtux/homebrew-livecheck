class Libfixbuf
  livecheck do
    url "https://tools.netsa.cert.org/fixbuf/download.html"
    regex(%r{releases/libfixbuf-([0-9.]+)\.t}i)
  end
end
