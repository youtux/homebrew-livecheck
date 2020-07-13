class Libuecc
  livecheck do
    url :head
    regex(/href=.*?libuecc[._-]v?(\d+(?:\.\d+)*)\.t/i)
  end
end
