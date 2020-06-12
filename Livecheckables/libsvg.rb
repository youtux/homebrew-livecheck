class Libsvg
  livecheck do
    url "https://cairographics.org/snapshots/"
    regex(/href=.*?libsvg-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
