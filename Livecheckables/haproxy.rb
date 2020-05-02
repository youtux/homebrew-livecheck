class Haproxy
  livecheck :url   => "https://www.haproxy.org/",
            :regex => /haproxy-([0-9.]+)\.tar/
end
