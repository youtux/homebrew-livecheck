class Unbound
  # We check the GitHub repo tags instead of
  # https://nlnetlabs.nl/downloads/unbound/ since the first-party site has a
  # tendency to lead to an `execution expired` error.
  livecheck :url   => "https://github.com/NLnetLabs/unbound.git",
            :regex => /^(?:release-)?v?(\d+(?:\.\d+)+)$/
end
