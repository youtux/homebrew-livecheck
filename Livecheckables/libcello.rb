class Libcello
  livecheck do
    url :homepage
    regex(/href=.*?libCello[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
