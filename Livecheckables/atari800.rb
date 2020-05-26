class Atari800
  livecheck do
    url "https://github.com/atari800/atari800/releases"
    regex(%r{.*?/atari800-([0-9\.]+)-src\.t})
  end
end
