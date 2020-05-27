class Ffmpeg
  livecheck do
    url "https://ffmpeg.org/download.html"
    regex(/ffmpeg-([0-9\.]+)\.t/)
  end
end
