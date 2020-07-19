class Pngcrush
  livecheck do
    url "https://pmt.sourceforge.io/pngcrush/ChangeLog.html"
    regex(/Version ([0-9.]+) /i)
  end
end
