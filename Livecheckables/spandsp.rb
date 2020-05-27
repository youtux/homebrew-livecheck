class Spandsp
  livecheck do
    url "https://www.soft-switch.org/downloads/spandsp/?C=M&O=D"
    regex(/href="spandsp-([\d\.]+)\.tar\.gz"/)
  end
end
