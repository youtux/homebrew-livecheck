class Libmetalink
  livecheck do
    url :stable
    regex(/libmetalink[._-]v?(\d+(?:\.\d+)+)$/i)
  end
end
