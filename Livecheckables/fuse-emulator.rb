class FuseEmulator
  livecheck do
    url "https://sourceforge.net/projects/fuse-emulator/"
    regex(%r{/fuse/[0-9.]+/fuse-([0-9.]+)\.t}i)
  end
end
