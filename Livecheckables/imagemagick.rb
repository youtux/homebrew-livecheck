class Imagemagick
  livecheck do
    url "https://www.imagemagick.org/download/"
    regex(/href=.*?ImageMagick-([0-9.\-]+)\.t/i)
  end
end
