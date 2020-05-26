class Mp3wrap
  livecheck do
    regex(%r{url=.+?/mp3wrap-v?(\d+(?:\.\d+)+)(?:-src)?\.t})
  end
end
