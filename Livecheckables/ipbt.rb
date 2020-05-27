class Ipbt
  livecheck do
    url "https://www.chiark.greenend.org.uk/~sgtatham/ipbt/"
    regex(/ipbt-(\d+)(?:\.[\da-z]+)?\.t/)
  end
end
