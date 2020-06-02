class Feh
  livecheck do
    url "https://feh.finalrewind.org/"
    regex(/href="feh-([0-9,.]+)\.t/)
  end
end
