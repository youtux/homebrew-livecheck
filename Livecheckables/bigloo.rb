class Bigloo
  livecheck do
    url "https://www-sop.inria.fr/indes/fp/Bigloo/"
    regex(/>\s*?version v?(\d+(?:\.\d+)+[a-z]?)\s*?</i)
  end
end
