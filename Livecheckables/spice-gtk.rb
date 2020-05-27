class SpiceGtk
  livecheck do
    url "https://www.spice-space.org/download/gtk/"
    regex(/href=.*?spice-gtk-(\d+(?:\.\d+)+)\.t/)
  end
end
