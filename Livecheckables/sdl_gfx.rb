class SdlGfx
  livecheck do
    url :homepage
    regex(/href=.*?SDL_gfx-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
