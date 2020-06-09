class Libhdhomerun
  livecheck do
    url :homepage
    regex(%r{href=".*?/libhdhomerun_([0-9]+)\.t})
  end
end
