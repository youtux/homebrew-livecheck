class Cataclysm
  livecheck do
    url "https://github.com/CleverRaven/Cataclysm-DDA/releases/latest"
    regex(%r{href=.*?/tag/([^"' >]+)["' >]}i)
  end
end
