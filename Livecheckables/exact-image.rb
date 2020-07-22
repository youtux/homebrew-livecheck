class ExactImage
  livecheck do
    url "https://dl.exactcode.de/oss/exact-image/"
    regex(/href=.*?exact-image-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
