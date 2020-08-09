class Go
  livecheck do
    url "https://golang.org/dl/"
    regex(/href=.*?gov?(\d+(?:\.\d+)+)\.src/i)
  end
end
