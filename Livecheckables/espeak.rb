class Espeak
  livecheck do
    regex(%r{url=.+?/espeak-v?(\d+(?:\.\d+)+)(?:-source)?\.(?:t|z)}i)
  end
end
