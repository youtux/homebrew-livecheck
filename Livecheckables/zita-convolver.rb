class ZitaConvolver
  livecheck do
    url "https://kokkinizita.linuxaudio.org/linuxaudio/downloads/index.html"
    regex(/href="zita-convolver-([0-9\.]+)\.t/)
  end
end
