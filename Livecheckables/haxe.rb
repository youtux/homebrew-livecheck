class Haxe
  livecheck do
    url "https://haxe.org/download/"
    regex(%r{href=".*?/haxe-([0-9.]+)-})
  end
end
