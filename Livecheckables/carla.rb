class Carla
  livecheck do
    url "https://github.com/falkTX/Carla/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
