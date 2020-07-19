class Libmetalink
  livecheck do
    url :stable
    regex(/libmetalink-(\d+(?:\.\d+)+)$/i)
  end
end
