class Lrzip
  livecheck do
    url "http://ck.kolivas.org/apps/lrzip"
    regex(/href=.*?lrzip[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
