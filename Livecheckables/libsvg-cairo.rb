class LibsvgCairo
  livecheck do
    url "https://cairographics.org/snapshots/"
    regex(/href=.*?libsvg-cairo-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
