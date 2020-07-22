class Mednafen
  livecheck do
    url "https://mednafen.github.io/releases/"
    regex(/href=.*?mednafen-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
