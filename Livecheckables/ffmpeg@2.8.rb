class FfmpegAT28
  livecheck do
    url "https://ffmpeg.org/download.html"
    regex(/ffmpeg-(2\.8\.[0-9.]+)\.t/)
  end
end
