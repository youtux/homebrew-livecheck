class Ripgrep
  livecheck do
    url "https://github.com/BurntSushi/ripgrep/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
