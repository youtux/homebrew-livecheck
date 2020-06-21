class Epic5
  livecheck do
    url "http://ftp.epicsol.org/pub/epic/EPIC5-PRODUCTION/"
    regex(/href=.*?epic5-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
