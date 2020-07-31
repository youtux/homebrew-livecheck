class Gegl
  livecheck do
    url "https://download.gimp.org/pub/gegl/0.4/"
    regex(/gegl[._-]v?(\d+(?:\.\d+)*)\.t/i)
  end
end
