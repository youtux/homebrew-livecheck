class Dcraw
  livecheck do
    url "https://distfiles.macports.org/dcraw/"
    regex(/href=.*?dcraw-([0-9.]+)\.t/i)
  end
end
