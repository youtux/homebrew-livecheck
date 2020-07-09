class Exercism
  livecheck do
    url "https://github.com/exercism/cli/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
