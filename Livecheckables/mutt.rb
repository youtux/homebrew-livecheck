class Mutt
  livecheck do
    url :homepage
    regex(/Mutt ([0-9.]+) was released/i)
  end
end
