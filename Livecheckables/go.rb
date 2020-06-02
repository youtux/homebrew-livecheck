class Go
  livecheck do
    url "https://golang.org/dl/"
    regex(/go([0-9.]+)\.src/)
  end
end
