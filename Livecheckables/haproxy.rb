class Haproxy
  livecheck do
    url :homepage
    regex(/haproxy[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
