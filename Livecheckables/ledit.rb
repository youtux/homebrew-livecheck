class Ledit
  livecheck do
    url :homepage
    regex(/current .*? is ([0-9.]+) /i)
  end
end
