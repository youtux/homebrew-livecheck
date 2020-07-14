class ExactImage
  livecheck do
    url "https://dl.exactcode.de/oss/exact-image/"
    regex(/href=.*?exact-image-([0-9.]+)\.t/)
  end
end
