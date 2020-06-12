class SdlTtf
  livecheck do
    url "https://www.libsdl.org/projects/SDL_ttf/release"
    regex(/href=.*?SDL_ttf-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
