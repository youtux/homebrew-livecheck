class Swaks
  livecheck do
    url "http://www.jetmore.org/john/code/swaks/versions.html"
    regex(/href=.*?swaks-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
