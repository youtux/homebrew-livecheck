class FuseEmulator
  livecheck do
    url "https://sourceforge.net/projects/fuse-emulator/"
    regex(%r{/fuse/[0-9.]+/fuse[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
