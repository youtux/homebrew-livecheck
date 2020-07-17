class BoostBuild
  livecheck do
    url :head
    regex(/^boost[._-]v?(\d+(?:\.\d+)+)$/i)
  end
end
