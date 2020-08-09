class Ipbt
  livecheck do
    url :homepage
    regex(/href=.*?ipbt[._-]v?(\d+)(?:\.[\da-z]+)?\.t/i)
  end
end
