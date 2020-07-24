class Dwarfutils
  livecheck do
    url :homepage
    regex(%r{href=(?:["']?|.*?/)libdwarf-([0-9.]+)\.t}i)
  end
end
