class Agedu
  livecheck do
    url "https://www.chiark.greenend.org.uk/~sgtatham/agedu/"
    regex(/href="agedu-(\d+)(?:\.[\da-z]+)?\.t/)
  end
end
