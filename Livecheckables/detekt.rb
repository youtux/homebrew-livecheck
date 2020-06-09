class Detekt
  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end
end
