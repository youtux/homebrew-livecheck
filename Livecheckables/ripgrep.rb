class Ripgrep
  livecheck do
    url "https://github.com/BurntSushi/ripgrep/releases"
    regex(%r{href="/BurntSushi/ripgrep/tree/([0-9.]+)})
  end
end
