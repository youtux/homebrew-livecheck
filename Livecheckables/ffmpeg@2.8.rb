class FfmpegAT28
  livecheck do
    url "https://ffmpeg.org/download.html"
    regex(/ffmpeg-v?(2\.8(?:\.\d+)*)\.t/i)
  end
end
