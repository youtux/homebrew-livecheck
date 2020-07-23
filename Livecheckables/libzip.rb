class Libzip
  livecheck do
    url "https://libzip.org/download/"
    regex(/href=.*?libzip-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
