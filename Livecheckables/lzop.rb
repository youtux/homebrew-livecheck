class Lzop
  livecheck do
    url "https://www.lzop.org/download/"
    regex(/href=.*?lzop-([0-9.]+)\.t/)
  end
end
