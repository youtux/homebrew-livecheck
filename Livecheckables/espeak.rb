class Espeak
  livecheck do
    url :stable
    regex(%r{url=.*?/espeak[._-]v?(\d+(?:\.\d+)+)(?:-source)?\.(?:t|z)}i)
  end
end
