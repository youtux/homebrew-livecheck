class DockerCompose
  livecheck do
    url :head
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end
end
