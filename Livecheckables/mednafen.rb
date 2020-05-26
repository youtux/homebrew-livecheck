class Mednafen
  livecheck do
    url "https://mednafen.github.io/releases/"
    regex(%r{href="/releases/files/mednafen-([0-9\.]+)\.t})
  end
end
