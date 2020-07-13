class Libflowmanager
  livecheck do
    url :homepage
    regex(/href=.*?libflowmanager[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
