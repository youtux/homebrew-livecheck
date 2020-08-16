class Espeak
  livecheck do
    url :stable
    regex(%r{url=.*?/espeak[._-]v?(\d+(?:\.\d+)+)(?:-source)?\.(?:t|zip)}i)
  end
end
