class ImagemagickAT6
  livecheck do
    url "https://www.imagemagick.org/download/"
    regex(/href="ImageMagick-(6[0-9.\-]+)\.t/)
  end
end
