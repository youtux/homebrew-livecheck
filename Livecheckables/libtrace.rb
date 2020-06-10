class Libtrace
  livecheck do
    url :homepage
    regex(%r{stable version is.*?href=".*?/libtrace-([0-9.]+)\.t})
  end
end
