class Goreman
  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end
end
