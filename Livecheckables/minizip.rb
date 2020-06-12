class Minizip
  livecheck do
    url "http://zlib.net"
    regex(/href=.*?zlib-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
