class Gloox
  livecheck do
    url "https://camaya.net/gloox/"
    regex(%r{Latest stable version.*?/gloox-([0-9.]+)\.t})
  end
end
