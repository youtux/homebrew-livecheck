class Abcmidi
  livecheck do
    url "https://ifdo.ca/~seymour/runabc/top.html"
    regex(/abcMIDI-(20[0-9]+\.[0-9]+\.[0-9]+)/)
  end
end
