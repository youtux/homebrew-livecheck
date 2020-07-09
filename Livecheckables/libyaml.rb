class Libyaml
  livecheck do
    url "https://github.com/yaml/libyaml/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
