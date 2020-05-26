class Par2
  livecheck do
    url "https://github.com/Parchive/par2cmdline/releases"
    regex(%r{href="/Parchive/par2cmdline/tree/v?([0-9\.]+)})
  end
end
