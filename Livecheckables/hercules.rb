class Hercules
  livecheck do
    url :homepage
    regex(/href=.*?hercules[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
