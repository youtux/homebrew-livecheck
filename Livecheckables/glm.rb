class Glm
  livecheck do
    url "https://github.com/g-truc/glm/releases"
    regex(%r{latest.*?href="/g-truc/glm/tree/([0-9\.]+)}m)
  end
end
