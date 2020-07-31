class Pdftohtml
  livecheck do
    url :stable
    regex(%r{url=.*?/pdftohtml[._-]v?(\d+(?:\.\d+)+[a-z]?)\.t}i)
  end
end
