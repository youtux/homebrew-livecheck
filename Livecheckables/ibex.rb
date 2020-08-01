class Ibex
  livecheck do
    url :head
    regex(/^ibex[._-]v?(\d+(?:\.\d+)+)$/i)
  end
end
