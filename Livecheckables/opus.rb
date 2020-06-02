class Opus
  livecheck do
    url "https://www.opus-codec.org/downloads/"
    regex(%r{href="/release/stable/.*libopus ([0-9,.]+)</a>})
  end
end
