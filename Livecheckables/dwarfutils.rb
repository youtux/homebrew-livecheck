class Dwarfutils
  livecheck do
    url :homepage
    regex(/HREF="libdwarf-([0-9.]+)\.t/i)
  end
end
