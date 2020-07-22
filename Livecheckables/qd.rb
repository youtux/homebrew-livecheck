class Qd
  livecheck do
    url :homepage
    regex(/href=.*?qd-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
