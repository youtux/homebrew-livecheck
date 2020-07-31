class Luajit
  livecheck do
    url "https://luajit.org/download.html"
    regex(/class="downname">LuaJIT[._-]v?([\d.]+)</i)
  end
end
