class Nasm
  livecheck do
    url "https://www.nasm.us/pub/nasm/releasebuilds/"
    regex(%r{href="([0-9\.]+)/">})
  end
end
