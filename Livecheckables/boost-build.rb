class BoostBuild
  livecheck do
    url :head
    regex(/boost-([0-9.]+)/)
  end
end
