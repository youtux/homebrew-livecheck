class GoAT114
  livecheck do
    url "https://golang.org/dl/"
    regex(/href=.*?gov?(1\.14(?:\.\d+)+)\.src/i)
  end
end
