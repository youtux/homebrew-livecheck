class Checkbashisms
  livecheck :url => "https://launchpad.net/ubuntu/+source/devscripts/",
            :regex => %r{Latest upload.*?href="/ubuntu/\+source/devscripts/([0-9\.a-z]+)"}m
end
