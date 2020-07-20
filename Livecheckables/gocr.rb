class Gocr
  livecheck do
    url :homepage
    regex(/GOCR ([0-9.]+).*?release/i)
  end
end
