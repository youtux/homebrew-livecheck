class Tundra
  livecheck do
    url "https://github.com/deplinenoise/tundra/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
