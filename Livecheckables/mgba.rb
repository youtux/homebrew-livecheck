class Mgba
  livecheck do
    url "https://github.com/mgba-emu/mgba/releases"
    regex(%r{href="/mgba-emu/mgba/tree/([0-9\.]+)})
  end
end
