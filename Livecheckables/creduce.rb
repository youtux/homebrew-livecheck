class Creduce
  livecheck do
    url :homepage
    regex(/href=.*?creduce-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
