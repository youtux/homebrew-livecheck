class Zboy
  livecheck do
    url :head
    regex(%r{url=.*?/zboy[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
