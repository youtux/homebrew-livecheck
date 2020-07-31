class Ocrmypdf
  livecheck do
    url :stable
    regex(/href=.*?ocrmypdf[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
