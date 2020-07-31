class Nethack
  livecheck do
    url :head
    regex(/^NetHack[._-]v?(\d+(?:\.\d+)+)_Released?$/i)
  end
end
