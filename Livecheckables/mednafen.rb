class Mednafen
  livecheck do
    url "https://mednafen.github.io/releases/"
    regex(/href=.*?mednafen-([0-9.]+)\.t/i)
  end
end
