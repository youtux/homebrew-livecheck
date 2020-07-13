class Dterm
  livecheck do
    url :homepage
    regex(/href=.*?dterm[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
