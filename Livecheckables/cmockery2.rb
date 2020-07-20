class Cmockery2
  livecheck do
    url :head
    regex(/([0-9]+\.[0-9.]+)/i)
  end
end
