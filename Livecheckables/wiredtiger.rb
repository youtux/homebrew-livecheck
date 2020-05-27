class Wiredtiger
  livecheck do
    url "https://github.com/wiredtiger/wiredtiger.git"
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end
end
