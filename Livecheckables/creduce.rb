class Creduce
  livecheck do
    url :homepage
    regex(/href=.*?creduce[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
