class Dcraw
  livecheck do
    url "https://distfiles.macports.org/dcraw/"
    regex(/href=.*?dcraw-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
