class Libarchive
  livecheck do
    url "https://libarchive.org/downloads/"
    regex(/href=.*?libarchive[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
