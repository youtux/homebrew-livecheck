class Fossil
  livecheck do
    url "https://www.fossil-scm.org/index.html/uv/download.js"
    regex(/"title": *?"Version (\d+(?:\.\d+)+)/i)
  end
end
