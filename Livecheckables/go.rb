class Go
  livecheck do
    url "https://golang.org/dl/"
    regex(/gov?(\d+(?:\.\d+)+)\.src/i)
  end
end
