class Jhead
  livecheck do
    url "https://www.sentex.net/~mwandel/jhead/"
    regex(/href=.*?jhead-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
