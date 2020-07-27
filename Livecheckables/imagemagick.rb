class Imagemagick
  livecheck do
    url "https://www.imagemagick.org/download/"
    regex(/href=.*?ImageMagick-v?(\d+(?:\.\d+)+-\d+)\.t/i)
  end
end
