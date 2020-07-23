class Idnits
  livecheck do
    url :homepage
    regex(/href=.*?idnits-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
