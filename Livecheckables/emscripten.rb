class Emscripten
  livecheck do
    url "https://github.com/kripken/emscripten/releases"
    regex(%r{href="/.*/emscripten/releases/tag/([0-9.]+)"})
  end
end
