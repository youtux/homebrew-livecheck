class ApacheBrooklynCli
  livecheck do
    url "https://github.com/apache/brooklyn-client.git"
    regex(%r{^(?:rel/)?apache-brooklyn-(\d+(?:\.\d+)+)$}i)
  end
end
