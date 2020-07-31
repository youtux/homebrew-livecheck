class Alure
  livecheck do
    url "https://kcat.strangesoft.net/alure-releases/"
    regex(/alure[._-]v?(\d+(?:\.\d+)+)/i)
  end
end
