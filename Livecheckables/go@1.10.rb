class GoAT110
  livecheck do
    url "https://golang.org/dl/"
    regex(/go(1\.10\.[0-9.]+)\.src/)
  end
end
