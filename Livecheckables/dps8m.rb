class Dps8m
  livecheck do
    url :head
    regex(/^R?(\d+(?:\.\d+)+)$/i)
  end
end
