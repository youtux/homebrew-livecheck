class Libhid
  livecheck do
    url :homepage
    regex(/href=.*?libhid[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
