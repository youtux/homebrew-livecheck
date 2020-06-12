class ConfluentPlatform
  livecheck do
    url "https://docs.confluent.io/current/release-notes/index.html"
    regex(/Confluent Platform v?(\d+(?:\.\d+)+) Release Notes/i)
  end
end
