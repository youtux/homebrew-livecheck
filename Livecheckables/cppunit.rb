class Cppunit
  livecheck do
    url :homepage
    regex(/href=.*?cppunit[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
