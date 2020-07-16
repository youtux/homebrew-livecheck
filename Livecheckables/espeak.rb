class Espeak
  livecheck do
    url :stable
    regex(%r{url=.*?/espeak-v?(\d+(?:\.\d+)+)(?:-source)?\.(?:t|z)}i)
  end
end
