class Mpgtx
  livecheck do
    url :stable
    regex(%r{url=.*?/mpgtx-v?(\d+(?:\.\d+)+(?:-\d+)?)(?:-src)?\.t}i)
  end
end
