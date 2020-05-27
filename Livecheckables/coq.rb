class Coq
  livecheck do
    url "https://coq.inria.fr/download"
    regex(%r{<a href="https://github.com/coq/coq/releases/tag/V(\d+(?:\.\w+)*)">})
  end
end
