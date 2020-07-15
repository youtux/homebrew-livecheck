class Exiftool
  livecheck do
    url "https://exiftool.org/history.html"
    regex(/href=.*?Image[._-]ExifTool[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
