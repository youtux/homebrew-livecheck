class Zboy
  livecheck do
    url :head
    regex(%r{url=.+?/zboy-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
