class Ffmpeg
  livecheck do
    url "https://ffmpeg.org/download.html"
    regex(/ffmpeg-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
