class Idnits
  livecheck do
    url :homepage
    regex(/href=.*?idnits[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
