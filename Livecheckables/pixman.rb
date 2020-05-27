class Pixman
  livecheck do
    url "https://cairographics.org/releases/"
    regex(/href="LATEST-pixman-([\d.]+\.[\d.]+\.[\d.]+)"/)
  end
end
