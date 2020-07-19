class Cgdb
  livecheck do
    url "https://cgdb.me/files/"
    regex(/href=.*?cgdb-([0-9.]+)\.t/i)
  end
end
