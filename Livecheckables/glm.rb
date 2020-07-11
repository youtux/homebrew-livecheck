class Glm
  livecheck do
    url "https://github.com/g-truc/glm/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
