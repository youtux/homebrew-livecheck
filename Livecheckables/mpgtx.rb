class Mpgtx
  livecheck do
    regex(%r{url=.+?/mpgtx-v?(\d+(?:\.\d+)+(?:-\d+)?)(?:-src)?\.t})
  end
end
