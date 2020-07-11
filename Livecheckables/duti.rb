class Duti
  livecheck do
    url :head
    regex(/^duti[._-]v?(\d+(?:[.-]\d+)+)$/i)
  end
end
