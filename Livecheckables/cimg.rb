class Cimg
  livecheck do
    url "https://cimg.eu/files/"
    regex(/href=.*?CImg_([0-9,.]+)\.zip/i)
  end
end
