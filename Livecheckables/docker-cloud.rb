class DockerCloud
  livecheck :url => "https://pypi.python.org/simple/docker-cloud/",
            :regex => %r{href=".*?/docker-cloud-([0-9\.]+)\.t}
end
