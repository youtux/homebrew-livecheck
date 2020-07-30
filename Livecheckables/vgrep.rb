class Vgrep
  livecheck do
    url "https://github.com/vrothberg/vgrep/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
