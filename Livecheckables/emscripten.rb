class Emscripten
  livecheck :url   => "https://github.com/kripken/emscripten/releases",
            :regex => %r{href="/.*/emscripten/releases/tag/([0-9\.]+)"}
end
