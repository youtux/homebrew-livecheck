class Freetds
  livecheck do
    url "http://www.freetds.org/files/stable/"
    regex(/href=.*?freetds-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
