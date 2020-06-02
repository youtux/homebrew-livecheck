class Libyaml
  livecheck do
    url "https://github.com/yaml/libyaml/releases"
    regex(%r{href="/yaml/libyaml/releases/tag/([0-9.]+)"})
  end
end
