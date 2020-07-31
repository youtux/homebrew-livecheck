class Ekg2
  livecheck do
    url :homepage
    regex(/^ekg2[._-]v?(\d+(?:\.\d+)+)$/i)
  end
end
