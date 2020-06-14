class Sdl
  livecheck do
    url "https://www.libsdl.org/release/"
    regex(/href=.*?SDL-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
