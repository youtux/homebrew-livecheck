class Prometheus
  livecheck :url => "https://api.github.com/repos/prometheus/prometheus/releases/latest",
            :regex => /([0-9\.]+\.[0-9\.]+)"/
end
