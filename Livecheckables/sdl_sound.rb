class SdlSound
  livecheck do
    url "https://icculus.org/SDL_sound/downloads/"
    regex(/href=.*?SDL_sound[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
