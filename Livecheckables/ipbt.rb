class Ipbt
  livecheck do
    url :homepage
    regex(/ipbt[._-]v?(\d+)(?:\.[\da-z]+)?\.t/i)
  end
end
