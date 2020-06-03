class Xrootd
  livecheck do
    url "http://xrootd.org/dload.html"
    regex(%r{href="/download/.*/xrootd-([0-9,.]+)\.tar})
  end
end
