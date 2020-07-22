class Mlkit
  livecheck do
    url :head
    regex(/mlkit-v?(\d+(?:\.\d+)+)$/i)
  end
end
