class Lzop
  livecheck do
    url "https://www.lzop.org/download/"
    regex(/href=.*?lzop-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
