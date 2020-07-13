class MupdfTools
  livecheck do
    url "https://mupdf.com/downloads/archive/?C=M&O=D"
    regex(/href=.*?mupdf[._-]v?(\d+(?:\.\d+)+)-source\.(?:t|zip)/i)
  end
end
