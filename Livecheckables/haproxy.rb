class Haproxy
  livecheck do
    url "https://www.haproxy.org/"
    regex(/haproxy-([0-9.]+)\.tar/)
  end
end
