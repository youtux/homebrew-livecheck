class GnustepMake
  livecheck do
    url "http://ftpmain.gnustep.org/pub/gnustep/core/"
    regex(/href=.*?gnustep-make[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
