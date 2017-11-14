class Imagemagick
  livecheck :url => "https://www.imagemagick.org/download/",
            :regex => /href="ImageMagick-([0-9\.\-]+)\.t/
end
