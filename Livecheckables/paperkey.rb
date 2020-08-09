class Paperkey
  livecheck do
    url :homepage
    regex(/href=.*?paperkey[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
