class Autossh
  livecheck do
    url :homepage
    regex(/href=.*?autossh[._-]v?(\d+(?:\.\d+)+[a-z]+)\.t/i)
  end
end
