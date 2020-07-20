class Dust
  livecheck do
    url :head
    regex(/v([\d.]+)/i)
  end
end
