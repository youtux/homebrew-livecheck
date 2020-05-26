class Libraw
  livecheck do
    url "https://www.libraw.org/download/"
    regex(/LibRaw-(\d+(?:\.\d+)*)\.tar/)
  end
end
