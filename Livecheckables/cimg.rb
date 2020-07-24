class Cimg
  livecheck do
    url "https://cimg.eu/files/"
    regex(/href=.*?CImg_v?(\d+(?:\.\d+)+)\.zip/i)
  end
end
