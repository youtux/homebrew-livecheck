class Mupdf
  livecheck do
    url "https://mupdf.com/downloads/"
    regex(%r{href="archive/mupdf-([0-9\.]+)-source})
  end
end
