class Lynx
  livecheck do
    url "https://invisible-mirror.net/archives/lynx/tarballs/?C=M&O=D"
    regex(/href="lynx([\d\.]+rel\.\d+)\.tar\.gz"/)
  end
end
