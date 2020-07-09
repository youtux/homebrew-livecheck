class Linkerd
  livecheck do
    url :stable
    regex(/^stable[._-]v?(\d+(?:\.\d+)+)$/)
  end
end
