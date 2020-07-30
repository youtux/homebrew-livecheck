class Mlkit
  livecheck do
    url :head
    regex(/mlkit[._-]v?(\d+(?:\.\d+)+)$/i)
  end
end
