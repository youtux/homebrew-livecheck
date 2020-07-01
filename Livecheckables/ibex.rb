class Ibex
  livecheck do
    url :head
    regex(/^ibex-(\d+(?:\.\d+)+)$/)
  end
end
