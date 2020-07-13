class Spandsp
  livecheck do
    url "https://www.soft-switch.org/downloads/spandsp/?C=M&O=D"
    regex(/href=.*?spandsp[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
