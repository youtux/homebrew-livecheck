class Idnits
  livecheck do
    url :homepage
    regex(/href=.*?idnits-([0-9.]+)\.t/i)
  end
end
