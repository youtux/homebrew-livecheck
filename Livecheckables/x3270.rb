class X3270
  livecheck do
    regex(%r{url=.+?/suite3270-v?(\d+(?:\.\d+)+(?:ga\d+)?)(?:-src)?\.t})
  end
end
