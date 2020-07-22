class Hercules
  livecheck do
    url :homepage
    regex(/href=.*?hercules-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
