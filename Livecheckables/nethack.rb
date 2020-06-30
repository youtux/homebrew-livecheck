class Nethack
  livecheck do
    url :head
    regex(/^NetHack-(\d+(?:\.\d+)+)_Released?$/)
  end
end
