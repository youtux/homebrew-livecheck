class Atari800
  livecheck do
    url "https://github.com/atari800/atari800/releases/latest"
    regex(%r{href=.*?/tag/ATARI800[._-]v?(\d+(?:[._]\d+)+)["' >]}i)
  end
end
