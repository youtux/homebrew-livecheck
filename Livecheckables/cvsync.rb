class Cvsync
  livecheck do
    url "https://www.cvsync.org"
    regex(/href=.+cvsync-v?(\d+(?:\.\d+)+)\.t/)
  end
end
