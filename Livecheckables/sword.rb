class Sword
  livecheck do
    url "https://www.crosswire.org/ftpmirror/pub/sword/source/"
    regex(%r{href="sword-([0-9.]+)/})
  end
end
