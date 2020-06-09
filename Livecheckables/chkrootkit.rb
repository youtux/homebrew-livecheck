class Chkrootkit
  livecheck do
    url :homepage
    regex(%r{href="/download/">chkrootkit ([0-9,.]+)})
  end
end
