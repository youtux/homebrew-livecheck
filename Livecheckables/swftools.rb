class Swftools
  livecheck do
    url "http://www.swftools.org/download.html"
    regex(/href=.*?swftools-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
