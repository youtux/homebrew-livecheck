class Haxe
  livecheck do
    url "https://haxe.org/download/"
    regex(/href=.*?haxe-([0-9.]+)-/)
  end
end
