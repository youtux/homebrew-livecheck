class Swftools
  livecheck do
    url "http://www.swftools.org/download.html"
    regex(/href=.*?swftools-([0-9.]+)\.t/i)
  end
end
