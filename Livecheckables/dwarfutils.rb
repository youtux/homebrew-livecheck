class Dwarfutils
  livecheck do
    url :homepage
    regex(%r{href=(?:["']?|.*?/)libdwarf-v?(\d{6,8})\.t}i)
  end
end
