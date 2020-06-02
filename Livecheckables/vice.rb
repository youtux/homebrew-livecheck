class Vice
  livecheck do
    url "https://sourceforge.net/projects/vice-emu/"
    regex(%r{.*?/vice-([0-9.]+)\.t})
  end
end
