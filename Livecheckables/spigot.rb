class Spigot
  livecheck do
    url :homepage
    regex(/href=.*?spigot-(\d+)(?:\.[\da-z]+)?\.t/i)
  end
end
