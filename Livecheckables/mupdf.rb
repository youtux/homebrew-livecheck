class Mupdf
  livecheck do
    url "https://mupdf.com/downloads/archive/"
    regex(/href=.*?mupdf-v?(\d+(?:\.\d+)+)-source\.t/i)
  end
end
