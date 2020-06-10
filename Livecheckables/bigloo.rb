class Bigloo
  livecheck do
    url :homepage
    regex(/>\s*?version v?(\d+(?:\.\d+)+[a-z]?)\s*?</i)
  end
end
