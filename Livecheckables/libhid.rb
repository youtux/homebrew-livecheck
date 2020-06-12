class Libhid
  livecheck do
    url :homepage
    regex(/href=.*?libhid-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
