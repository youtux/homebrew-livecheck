class Owamp
  livecheck do
    url "http://software.internet2.edu/sources/owamp/"
    regex(/href=.*?owamp-v?(\d+(?:\.\d+)+(?:-\d+)?)\.t/i)
  end
end
