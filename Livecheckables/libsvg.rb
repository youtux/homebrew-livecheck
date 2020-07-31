class Libsvg
  livecheck do
    url "https://cairographics.org/snapshots/"
    regex(/href=.*?libsvg[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
