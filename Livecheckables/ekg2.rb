class Ekg2
  livecheck do
    url :homepage
    regex(/^ekg2_(\d+(?:\.\d+)+)$/i)
  end
end
