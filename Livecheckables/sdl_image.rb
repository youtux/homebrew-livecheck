class SdlImage
  livecheck do
    url "https://www.libsdl.org/projects/SDL_image/release/"
    regex(/href=.*?SDL_image-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
