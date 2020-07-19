class Ipbt
  livecheck do
    url :homepage
    regex(/ipbt-(\d+)(?:\.[\da-z]+)?\.t/i)
  end
end
