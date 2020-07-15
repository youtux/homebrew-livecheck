class Mupdf
  livecheck do
    url "https://mupdf.com/downloads/"
    regex(/href=.*?mupdf-([0-9.]+)-source\.t/)
  end
end
