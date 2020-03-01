class Ffmpeg
  livecheck :url   => "https://ffmpeg.org/download.html",
            :regex => /ffmpeg-([0-9\.]+)\.t/
end
