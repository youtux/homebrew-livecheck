class Par2
  livecheck do
    url "https://github.com/Parchive/par2cmdline/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
