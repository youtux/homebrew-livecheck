class JpegTurbo
  livecheck do
    url "https://github.com/libjpeg-turbo/libjpeg-turbo/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
