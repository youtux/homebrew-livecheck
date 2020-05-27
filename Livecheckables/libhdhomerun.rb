class Libhdhomerun
  livecheck do
    url "https://www.silicondust.com/support/linux/"
    regex(%r{href=".*?/libhdhomerun_([0-9]+)\.t})
  end
end
