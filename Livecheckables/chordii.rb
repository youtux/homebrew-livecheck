class Chordii
  livecheck do
    url :stable
    regex(%r{url=.*?/chordii[._-]v?(\d+(?:\.\d+)+[a-z]?)\.t}i)
  end
end
