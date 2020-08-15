class GoAT114
  livecheck do
    url "https://golang.org/dl/"
    regex(/href=.*?go[._-]?v?(1\.14(?:\.\d+)*)[._-]src\.t/i)
  end
end
