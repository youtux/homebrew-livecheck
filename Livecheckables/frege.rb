class Frege
  livecheck do
    url "https://github.com/Frege/frege/releases/latest"
    regex(/href=.+?frege(\d+(?:\.\d+)+)\.jar/)
  end
end
