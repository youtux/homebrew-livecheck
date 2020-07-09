class Mgba
  livecheck do
    url "https://github.com/mgba-emu/mgba/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
