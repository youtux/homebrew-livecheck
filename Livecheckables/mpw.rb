class Mpw
  livecheck do
    url :head
    regex(/^v?(\d+(?:\.\d+)+.?cli.?\d+)$/i)
  end
end
