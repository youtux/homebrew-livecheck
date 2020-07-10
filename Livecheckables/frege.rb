class Frege
  livecheck do
    url "https://github.com/Frege/frege/releases/latest"
    regex(/href=.*?frege[._-]?(\d+(?:\.\d+)+)\.jar/i)
  end
end
