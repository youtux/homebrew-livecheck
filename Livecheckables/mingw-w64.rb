class MingwW64
  livecheck do
    regex(%r{url=.+?release/mingw-w64-v?(\d+(?:\.\d+)+)\.t})
  end
end
