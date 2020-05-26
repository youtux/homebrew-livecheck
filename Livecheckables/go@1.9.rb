class GoAT19
  livecheck do
    url "https://golang.org/dl/"
    regex(/go(1\.9\.[0-9\.]+)\.src/)
  end
end
