class SdlNet
  livecheck do
    url "https://www.libsdl.org/projects/SDL_net/release/"
    regex(/href=.*?SDL_net[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
