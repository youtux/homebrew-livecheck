class Freetype
  livecheck do
    url :stable
    regex(%r{freetype2/([a-zA-Z0-9.]+(?:\.[a-zA-Z0-9.]+)*)}i)
  end
end
