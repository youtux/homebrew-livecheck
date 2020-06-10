class Cvsync
  livecheck do
    url :homepage
    regex(/href=.+cvsync-v?(\d+(?:\.\d+)+)\.t/)
  end
end
