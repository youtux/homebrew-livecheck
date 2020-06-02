class Fabric
  livecheck do
    url "https://github.com/fabric/fabric/releases"
    regex(%r{href="/fabric/fabric/releases/tag/([0-9.]+)"})
  end
end
