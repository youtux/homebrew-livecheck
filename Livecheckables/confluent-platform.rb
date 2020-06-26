class ConfluentPlatform
  livecheck do
    url "https://docs.confluent.io/current/release-notes/changelog.html"
    regex(/>Version (\d+(?:\.\d+)+)</i)
  end
end
