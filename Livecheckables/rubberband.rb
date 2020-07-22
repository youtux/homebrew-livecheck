class Rubberband
  livecheck do
    url :homepage
    regex(/Rubber Band Library v?(\d+(?:\.\d+)+) released/i)
  end
end
