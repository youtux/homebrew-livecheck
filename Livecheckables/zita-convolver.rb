class ZitaConvolver
  livecheck do
    url "https://kokkinizita.linuxaudio.org/linuxaudio/downloads/index.html"
    regex(/href=.*?zita-convolver-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
