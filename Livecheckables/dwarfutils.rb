class Dwarfutils
  livecheck do
    url "https://www.prevanders.net/dwarf.html"
    regex(/HREF="libdwarf-([0-9\.]+).tar.gz/)
  end
end
