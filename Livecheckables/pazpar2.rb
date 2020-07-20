class Pazpar2
  livecheck do
    url "http://ftp.indexdata.dk/pub/pazpar2/"
    regex(/href=.*?pazpar2-([0-9.]+)\.t/i)
  end
end
