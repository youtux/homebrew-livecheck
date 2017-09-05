class Capstone
  livecheck :url => "https://github.com/aquynh/capstone/releases",
            :regex => %r{href="/aquynh/capstone/releases/latest">Latest release</a>.*?href="/aquynh/capstone/tree/([0-9\.]+)"}m
end
