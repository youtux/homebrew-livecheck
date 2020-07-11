class Unison
  livecheck do
    url "https://github.com/bcpierce00/unison/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+(?:v\d+)?)["' >]}i)
  end
end
