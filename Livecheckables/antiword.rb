class Antiword
  livecheck do
    url :homepage
    regex(/href=.*?antiword-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
