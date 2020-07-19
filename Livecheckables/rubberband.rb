class Rubberband
  livecheck do
    url :homepage
    regex(/Rubber Band Library v([0-9.]+) released/i)
  end
end
