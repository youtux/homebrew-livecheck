class Libarchive
  livecheck do
    url "https://libarchive.org/downloads/"
    regex(/libarchive-([0-9.]+)\.tar.gz/)
  end
end
