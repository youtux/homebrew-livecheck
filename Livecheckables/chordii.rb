class Chordii
  livecheck do
    url :stable
    regex(%r{url=.*?/chordii-v?(\d+(?:\.\d+)+[a-z]?)\.t}i)
  end
end
