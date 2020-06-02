class Chkrootkit
  livecheck do
    url "http://www.chkrootkit.org/"
    regex(%r{href="/download/">chkrootkit ([0-9,.]+)})
  end
end
