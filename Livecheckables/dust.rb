class Dust
  livecheck do
    url :head
    regex(/v([\d.]+)/)
  end
end
