class Libzip
  livecheck do
    url "https://libzip.org/download/"
    regex(/href="libzip-([0-9\.]+)\.t/)
  end
end
