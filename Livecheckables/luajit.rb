class Luajit
  livecheck do
    url "https://luajit.org/download.html"
    regex(/class="downname">LuaJIT-([\d\.]+)</)
  end
end
