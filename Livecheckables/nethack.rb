class Nethack
  livecheck do
    url :head
    regex(/^NetHack-(\d+(?:\.\d+)+)_Released?$/i)
  end
end
