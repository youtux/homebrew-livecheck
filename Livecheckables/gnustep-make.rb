class GnustepMake
  livecheck do
    url "http://ftpmain.gnustep.org/pub/gnustep/core/"
    regex(/href=.*?gnustep-make-([0-9.]+)\.t/i)
  end
end
