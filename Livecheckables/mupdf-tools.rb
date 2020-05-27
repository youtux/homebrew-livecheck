class MupdfTools
  livecheck do
    url "https://mupdf.com/downloads/archive/?C=M&O=D"
    regex(/href="mupdf-(\d+(?:\.\d+)+)-source/)
  end
end
