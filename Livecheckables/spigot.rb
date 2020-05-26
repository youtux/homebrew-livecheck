class Spigot
  livecheck do
    url "https://www.chiark.greenend.org.uk/~sgtatham/spigot/"
    regex(/href="spigot-(\d+)(?:\.[\da-z]+)?\.t/)
  end
end
