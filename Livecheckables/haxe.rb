class Haxe
  livecheck do
    url "https://github.com/HaxeFoundation/haxe/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
