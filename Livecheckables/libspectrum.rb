class Libspectrum
  livecheck do
    url "https://sourceforge.net/projects/fuse-emulator/"
    regex(%r{/libspectrum/[0-9.]+/libspectrum[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
