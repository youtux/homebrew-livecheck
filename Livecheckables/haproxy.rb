class Haproxy
  livecheck do
    url :homepage
    regex(/haproxy-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
