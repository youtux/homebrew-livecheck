class Paperkey
  livecheck do
    url :homepage
    regex(/paperkey[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
