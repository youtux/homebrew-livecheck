class Lua
  livecheck do
    url "https://www.lua.org/ftp/"
    regex(/href="lua-(.*?)\.tar\.gz"/i)
  end
end
