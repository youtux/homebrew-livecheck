class Mp3wrap
  livecheck do
    url :stable
    regex(%r{url=.*?/mp3wrap-v?(\d+(?:\.\d+)+)(?:-src)?\.t})
  end
end
