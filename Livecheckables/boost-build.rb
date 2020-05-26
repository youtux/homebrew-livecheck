class BoostBuild
  livecheck do
    url "https://github.com/boostorg/build.git"
    regex(/boost-([0-9\.]+)/)
  end
end
