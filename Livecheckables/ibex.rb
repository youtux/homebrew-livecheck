class Ibex
  livecheck do
    url :head
    regex(/^ibex-(\d+(?:\.\d+)+)$/i)
  end
end
