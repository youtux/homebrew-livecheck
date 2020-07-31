class Libraw
  livecheck do
    url "https://www.libraw.org/download/"
    regex(/LibRaw[._-]v?(\d+(?:\.\d+)*)\.t/i)
  end
end
