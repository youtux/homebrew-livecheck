class Haproxy
  livecheck :url => "http://www.haproxy.org/",
            :regex => /haproxy-([0-9.]+)\.tar/
end
