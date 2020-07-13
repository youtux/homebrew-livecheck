class Fossil
  livecheck do
    url "https://www.fossil-scm.org/home/uv/download.js"
    regex(/"title": *?"Version (\d+(?:\.\d+)+) circa/i)
  end
end
