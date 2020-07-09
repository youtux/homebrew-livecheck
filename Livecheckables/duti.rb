class Duti
  livecheck do
    url :head
    regex(/^duti[._-]v?(\d+(?:[.-]\d+)+)$/)
  end
end
