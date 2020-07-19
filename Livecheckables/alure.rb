class Alure
  livecheck do
    url "https://kcat.strangesoft.net/alure-releases/"
    regex(/alure-(\d+(?:\.\d+)+)/i)
  end
end
