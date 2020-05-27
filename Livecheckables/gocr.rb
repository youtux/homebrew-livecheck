class Gocr
  livecheck do
    url "https://wasd.urz.uni-magdeburg.de/jschulen/ocr/"
    regex(/GOCR ([0-9\.]+).*?release/)
  end
end
