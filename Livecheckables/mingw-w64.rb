class MingwW64
  livecheck do
    url :stable
    regex(%r{url=.*?release/mingw-w64-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
