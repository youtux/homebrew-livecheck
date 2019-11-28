class Exiftool
  livecheck :url => "https://exiftool.org/history.html",
            :regex => /production release is <a href="Image-ExifTool-([0-9\.]+)\.t/
end
