class SdlImage
  livecheck do
    url "https://www.libsdl.org/projects/SDL_image/release/"
    regex(/href=.*?SDL_image[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
