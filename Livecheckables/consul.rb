class Consul
  livecheck :url => "https://www.consul.io/downloads.html",
            :regex => %r{href="https://releases.hashicorp.com/consul/([0-9\.]+)}
end
