class Burp
  livecheck do
    url :stable
    regex(%r{url=.*?/burp[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
