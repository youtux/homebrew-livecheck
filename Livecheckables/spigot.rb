class Spigot
  livecheck do
    url :homepage
    regex(/href=.*?spigot[._-]v?(\d+)(?:\.[\da-z]+)?\.t/i)
  end
end
