class Libfixbuf
  livecheck :url   => "https://tools.netsa.cert.org/fixbuf/download.html",
            :regex => %r{releases/libfixbuf-([0-9\.]+)\.t}
end
