class Ngt
  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end
end
