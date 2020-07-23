class Cgdb
  livecheck do
    url "https://cgdb.me/files/"
    regex(/href=.*?cgdb-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
