class FuseEmulator
  livecheck do
    url :stable
    regex(%r{url=.*?/fuse[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
