class Sdl
  livecheck do
    url "https://www.libsdl.org/release/"
    regex(/href=.*?SDL-v?(1(?:\.\d+)+)\.t/i)
  end
end
